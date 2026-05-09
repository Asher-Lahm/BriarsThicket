using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerMovement : MonoBehaviour
{
    public float speed;

    private CharacterController controller;
    private PlayerControls controls;
    private Vector2 moveInput;


    void Awake()
    {
        controller = GetComponent<CharacterController>();
        controls = new PlayerControls();
    }

    void Update()
    {
        Vector3 forward = Camera.main.transform.forward;
        Vector3 right = Camera.main.transform.right;

        forward.y = 0;
        right.y = 0;

        forward.Normalize();
        right.Normalize();

        Vector2 input = controls.Player.Move.ReadValue<Vector2>();
        Vector3 move = forward * input.y + right * input.x;

        controller.Move(speed * Time.deltaTime * move);
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
