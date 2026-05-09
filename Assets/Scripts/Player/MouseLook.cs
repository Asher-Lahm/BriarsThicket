using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseLook : MonoBehaviour
{
    public Transform cameraPivot;
    public Transform cameraY;
    public float sensitivityYaw;
    public float sensitivityPitch;
    public float cameraMaxHeight;

    private PlayerControls controls;
    private float cameraMinHeight = -7;
    private float cameraMax;

    void Awake()
    {
        controls = new PlayerControls();

        // temporarily here
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        cameraMax = cameraMinHeight + cameraMaxHeight;
    }

    // Update is called once per frame
    void Update()
    {
        Vector2 lookInput = controls.Player.Look.ReadValue<Vector2>();

        cameraPivot.Rotate(lookInput.x * sensitivityYaw * Vector3.up);

        Vector3 cameraYPos = cameraY.position;

        cameraYPos.y -= lookInput.y * sensitivityPitch;
        cameraYPos.y = Mathf.Clamp(cameraYPos.y, cameraMinHeight, cameraMax);
        cameraY.position = cameraYPos;
        transform.LookAt(cameraPivot);
    }

    private void OnEnable()
    {
        controls.Player.Enable();
    }

    private void OnDisable()
    {
        controls.Player.Disable();
    }
}
