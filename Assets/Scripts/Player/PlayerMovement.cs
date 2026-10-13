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
    [SerializeField] PlayerInputReader input;
    [SerializeField] Transform modelTransform;
    private Camera mainCamera;

    private void Awake()
    {
        if (input == null) 
            input = GetComponent<PlayerInputReader>();
        mainCamera = Camera.main;
        controller = GetComponent<CharacterController>();
    }

    void Update()
    {
        Vector3 forward = mainCamera.transform.forward;
        Vector3 right = mainCamera.transform.right;

        forward.y = 0;
        right.y = 0;

        forward.Normalize();
        right.Normalize();

        Vector2 directionInput = input.Move;
        Boolean sprinting = input.Sprint;
        Vector3 move = (forward * directionInput.y + right * directionInput.x) * (sprinting ? sprintSpeed : speed);

        if (move.sqrMagnitude > 0.001f)
        {

            Quaternion targetRotation = Quaternion.LookRotation(move, Vector3.up);

            modelTransform.rotation = Quaternion.Slerp(modelTransform.rotation, targetRotation, Time.deltaTime * 10f);
        }

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
}
