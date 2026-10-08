using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public Transform playerCameraPivot;
    public Transform cameraPivot;
    public Transform cameraY;
    public float sensitivityYaw;
    public float sensitivityPitch;
    public float cameraMaxHeight;
    [SerializeField] float transitionDuration;

    private PlayerControls controls;
    private float cameraMinHeight = -7;
    private float cameraMax;

    private bool fixedCamera = false;
    private Vector3 previousPosition;
    private Quaternion previousRotation;

    private Coroutine cameraTransition;

    void Awake()
    {
        controls = new PlayerControls();
        cameraPivot = playerCameraPivot;
        cameraMax = cameraMinHeight + cameraMaxHeight;
    }

    private void StartCameraTransition(
        Vector3 position,
        Quaternion rotation)
    {
        if (cameraTransition != null)
            StopCoroutine(cameraTransition);

        cameraTransition = StartCoroutine(
            TransitionCamera(position, rotation)
        );
    }

    private IEnumerator TransitionCamera(Vector3 targetPosition, Quaternion targetRotation)
    {
        Vector3 startPosition = transform.position;
        Quaternion startRotation = transform.rotation;

        float elapsed = 0;

        while (elapsed < transitionDuration)
        {
            elapsed += Time.deltaTime;

            float t = elapsed / transitionDuration;

            // Smoothstep
            t = t * t * (3f - 2f * t);

            transform.position = Vector3.Lerp(startPosition, targetPosition, t);

            transform.rotation = Quaternion.Slerp(startRotation, targetRotation, t);

            yield return null;
        }

        transform.position = targetPosition;
        transform.rotation = targetRotation;

    }

    public void MoveToFixedPosition(Transform targetPos)
    {
        fixedCamera = true;
        previousPosition = transform.position;
        previousRotation = transform.rotation;
        StartCameraTransition(targetPos.position, targetPos.rotation);
    }

    public void ReturnPlayerControl()
    {
        StartCameraTransition(previousPosition, previousRotation);
        fixedCamera = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (!fixedCamera)
        {
            Vector2 lookInput = controls.Player.Look.ReadValue<Vector2>();

            cameraPivot.Rotate(lookInput.x * sensitivityYaw * Vector3.up);

            Vector3 cameraYPos = cameraY.position;

            cameraYPos.y -= lookInput.y * sensitivityPitch;
            cameraYPos.y = Mathf.Clamp(cameraYPos.y, cameraMinHeight, cameraMax);
            cameraY.position = cameraYPos;
            transform.LookAt(cameraPivot);
        }
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
