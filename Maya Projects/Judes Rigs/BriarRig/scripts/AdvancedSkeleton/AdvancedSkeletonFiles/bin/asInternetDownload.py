import os
import shutil
import subprocess
import tempfile
import time
import __main__ as _asMain

from maya import cmds


OPTION_PREFIX = "asInternetDownload"
# Pause between sequential demo downloads to avoid Hostinger CDN 429 lockouts.
BETWEEN_DOWNLOAD_SECONDS = 18
# Keep session across module reload (MEL reloads this file on every call).
if not hasattr(_asMain, "_asInternetDownloadSession"):
    _asMain._asInternetDownloadSession = {"active": False, "complete": 0, "total": 0}
SESSION = _asMain._asInternetDownloadSession


def _option(name):
    return cmds.optionVar(q=OPTION_PREFIX + name)


def _remove(path):
    if os.path.isfile(path):
        os.remove(path)


def _process_events():
    try:
        from PySide2 import QtWidgets
        QtWidgets.QApplication.processEvents()
    except Exception:
        pass


def _cancelled():
    return cmds.progressWindow(q=True, isCancelled=True)


def _session_status(status):
    if SESSION["active"]:
        status = "%s / %s: %s" % (SESSION["complete"] + 1,
                                    SESSION["total"], status)
    try:
        cmds.progressWindow(e=True, status=status)
    except RuntimeError:
        pass


def start_session():
    SESSION["active"] = True
    SESSION["complete"] = 0
    SESSION["total"] = max(1, int(_option("Total")))
    cmds.progressWindow(title="AdvancedSkeleton Downloads", progress=0,
                        maxValue=SESSION["total"],
                        status="Preparing downloads...", isInterruptable=True)


def set_session_status():
    if SESSION["active"]:
        _session_status(_option("Status"))


def end_session():
    SESSION["active"] = False
    SESSION["complete"] = 0
    SESSION["total"] = 0
    try:
        cmds.progressWindow(endProgress=True)
    except RuntimeError:
        pass


def _clear_readonly(path):
    if os.name != "nt" or not os.path.isdir(path):
        return
    for root, _dirs, files in os.walk(path):
        for name in files:
            file_path = os.path.join(root, name)
            try:
                os.chmod(file_path, 0o666)
            except OSError:
                pass


def _replace_dir(src, dst, purpose, retries=10):
    last_error = None
    for attempt in range(retries):
        try:
            os.replace(src, dst)
            return
        except OSError as exc:
            last_error = exc
            _session_status(
                "Folder in use. Retrying replace of %s (%s/%s)..."
                % (purpose, attempt + 1, retries))
            _process_events()
            time.sleep(1.0)
    raise RuntimeError(
        "Unable to replace %s.\n\n"
        "Windows denied access while renaming:\n%s\n-> %s\n\n"
        "Close Unreal Editor and any Explorer window on that folder, "
        "then try again.\n\n%s"
        % (purpose, src, dst, last_error))


def _stop(process):
    if process.poll() is None:
        process.terminate()
        try:
            process.wait(timeout=2)
        except subprocess.TimeoutExpired:
            process.kill()
            process.wait()


def _start_process(command):
    startup = None
    if os.name == "nt":
        startup = subprocess.STARTUPINFO()
        startup.dwFlags |= subprocess.STARTF_USESHOWWINDOW
        startup.wShowWindow = subprocess.SW_HIDE
    return subprocess.Popen(command, stdout=subprocess.DEVNULL,
                            stderr=subprocess.PIPE, startupinfo=startup)


def _wait(seconds, status):
    end_time = time.time() + seconds
    while True:
        if _cancelled():
            return False
        remaining = max(0, int(end_time - time.time()) + 1)
        _session_status("%s %s seconds. Press Esc to cancel." % (status, remaining))
        _process_events()
        if time.time() >= end_time:
            return True
        time.sleep(0.1)


def _run(curl, url, temporary, purpose):
    command = [
        curl,
        "--fail",
        "--show-error",
        "--location",
        "--silent",
        "--connect-timeout",
        "20",
        "--speed-limit",
        "1",
        "--speed-time",
        "30",
        "-o",
        temporary,
        url,
    ]
    process = _start_process(command)
    while process.poll() is None:
        _session_status("Downloading %s. Press Esc to cancel." % purpose)
        if _cancelled():
            _stop(process)
            raise RuntimeError("Download canceled: %s." % purpose)
        _process_events()
        time.sleep(0.1)
    _, stderr = process.communicate()
    response = stderr.decode("utf-8", "replace")
    return process.returncode, response


def _server_busy_error(action="download"):
    # Fail fast on HTTP 429 - retrying only worsens Hostinger rate limits.
    return RuntimeError(
        "Heavy server usage right now.\n\n"
        "( HTTP code 429 : Too Many Requests. )\n"
        "Too many people are downloading at the same time.\n\n"
        "Please wait a few minutes, then try again.")


def download():
    curl = _option("Curl")
    url = _option("Url")
    destination = _option("Destination")
    purpose = _option("Purpose")
    temporary = destination + ".download"
    standalone = not SESSION["active"]
    finished = False
    _remove(destination)
    _remove(temporary)
    if standalone:
        cmds.progressWindow(title="Downloading", progress=0,
                            status="Preparing %s..." % purpose, isInterruptable=True)
    try:
        if SESSION["active"] and SESSION["complete"] > 0:
            if not _wait(BETWEEN_DOWNLOAD_SECONDS,
                         "Waiting before next download to avoid server limits."):
                raise RuntimeError("Download canceled: %s." % purpose)
        result, response = _run(curl, url, temporary, purpose)
        if result == 0 and os.path.isfile(temporary):
            os.replace(temporary, destination)
            if SESSION["active"]:
                SESSION["complete"] += 1
                cmds.progressWindow(e=True, progress=SESSION["complete"],
                                    status="Downloaded %s." % purpose)
            print("// Downloaded: %s\n" % destination)
            finished = True
            return
        _remove(temporary)
        if "429" in response or "Too Many Requests" in response:
            raise _server_busy_error("download")
        raise RuntimeError(
            "Unable to download %s.\n\n%s\n"
            "Check your internet connection and try again." % (purpose, response))
    finally:
        _remove(temporary)
        if standalone or not finished:
            end_session()


def get_text():
    curl = _option("Curl")
    url = _option("Url")
    purpose = _option("Purpose")
    result_option = OPTION_PREFIX + "TextResult"
    handle, temporary = tempfile.mkstemp(prefix="asInternetText_", suffix=".download")
    os.close(handle)
    standalone = not SESSION["active"]
    try:
        cmds.optionVar(remove=result_option)
    except RuntimeError:
        pass
    if standalone:
        cmds.progressWindow(title="Checking online updates", progress=0,
                            status="Preparing %s..." % purpose,
                            isInterruptable=True)
    try:
        result, response = _run(curl, url, temporary, purpose)
        if result == 0 and os.path.isfile(temporary):
            with open(temporary, "r", encoding="utf-8", errors="replace") as stream:
                cmds.optionVar(sv=(result_option, stream.read()))
            return
        _remove(temporary)
        if "429" in response or "Too Many Requests" in response:
            raise _server_busy_error("check")
    finally:
        _remove(temporary)
        if standalone:
            end_session()


def unzip():
    archive = _option("Archive")
    destination = _option("UnzipDestination")
    purpose = _option("UnzipPurpose")
    zip_program = _option("Zip")
    standalone = not SESSION["active"]
    finished = False
    if os.name == "nt":
        command = [zip_program, "x", "-y", archive, "-o" + destination]
    else:
        command = ["unzip", "-o", archive, "-d", destination]
    if standalone:
        cmds.progressWindow(title="Unzipping", progress=0,
                            status="Preparing %s..." % purpose, isInterruptable=True)
    process = _start_process(command)
    try:
        while process.poll() is None:
            _session_status("Unzipping %s. Press Esc to cancel." % purpose)
            if _cancelled():
                _stop(process)
                raise RuntimeError("Unzip canceled: %s." % purpose)
            _process_events()
            time.sleep(0.1)
        _, stderr = process.communicate()
        if process.returncode != 0:
            raise RuntimeError("Unable to unzip %s.\n\n%s" %
                               (purpose, stderr.decode("utf-8", "replace")))
        print("// Unzipped: %s\n" % archive)
        finished = True
    finally:
        if standalone or not finished:
            end_session()


def replace_package():
    archive = _option("Archive")
    destination = _option("UnzipDestination")
    expected = _option("ExpectedFile")
    purpose = _option("UnzipPurpose")
    zip_program = _option("Zip")
    staging = destination + ".new"
    previous = destination + ".old"
    standalone = not SESSION["active"]
    finished = False
    if os.path.isdir(staging):
        shutil.rmtree(staging)
    if os.path.isdir(previous):
        shutil.rmtree(previous)
    os.makedirs(staging)
    if os.name == "nt":
        command = [zip_program, "x", "-y", archive, "-o" + staging]
    else:
        command = ["unzip", "-o", archive, "-d", staging]
    if standalone:
        cmds.progressWindow(title="Installing", progress=0,
                            status="Preparing %s..." % purpose,
                            isInterruptable=True)
    try:
        process = _start_process(command)
        while process.poll() is None:
            _session_status("Extracting %s. Press Esc to cancel." % purpose)
            if _cancelled():
                _stop(process)
                raise RuntimeError("Install canceled: %s." % purpose)
            _process_events()
            time.sleep(0.1)
        _, stderr = process.communicate()
        if process.returncode != 0:
            raise RuntimeError("Unable to extract %s.\n\n%s" %
                               (purpose, stderr.decode("utf-8", "replace")))
        if not os.path.isfile(os.path.join(staging, expected)):
            raise RuntimeError("Extracted %s is missing: %s" % (purpose, expected))
        _session_status("Replacing old %s..." % purpose)
        if os.path.isdir(destination):
            _clear_readonly(destination)
            _replace_dir(destination, previous, purpose)
        try:
            _clear_readonly(staging)
            _replace_dir(staging, destination, purpose)
        except Exception:
            if os.path.isdir(previous) and not os.path.isdir(destination):
                try:
                    _replace_dir(previous, destination, purpose)
                except Exception:
                    pass
            raise
        if os.path.isdir(previous):
            shutil.rmtree(previous)
        print("// Installed: %s\n" % destination)
        finished = True
    finally:
        if os.path.isdir(staging):
            shutil.rmtree(staging)
        if standalone or not finished:
            end_session()
