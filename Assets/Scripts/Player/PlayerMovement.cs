using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerMovement : MonoBehaviour
{
    [SerializeField] private float speed;
    [SerializeField] private float sprintSpeed;
    [SerializeField] private float gravity;
    private float verticalVelocity;

    private CharacterController controller;
    private PlayerControls controls;


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
        Boolean sprinting = controls.Player.Sprint.IsPressed();
        Vector3 move = (forward * input.y + right * input.x) * (sprinting ? sprintSpeed : speed);

        if (controller.isGrounded)
        {
            if (verticalVelocity < 0)
                verticalVelocity = -2f; // keeps player grounded
        }
        else
        {
            verticalVelocity += gravity * Time.deltaTime;
        }

        move.y = verticalVelocity;

        controller.Move(Time.deltaTime * move);
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
