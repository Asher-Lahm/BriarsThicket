using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;

public enum InputContext
{
    Gameplay,
    Dialogue,
    Menu
}

public class PlayerInputReader : MonoBehaviour
{
    private PlayerControls controls;

    public Vector2 Move => controls.Player.Move.ReadValue<Vector2>();

    public bool Sprint => controls.Player.Sprint.IsPressed();

    public event Action InteractPressed;
    public event Action UIConfirmPressed;

    public InputContext currentContext { get; private set; } = InputContext.Gameplay;

    void Awake()
    {
        controls = new PlayerControls();
    }

    void OnEnable()
    {
        controls.Player.Enable();
        controls.Player.Interact.performed += OnInteractPerformed;
        controls.UINavigation.Confirm.performed += OnConfirmPerformed;
    }

    void OnDisable()
    {
        controls.Player.Interact.performed -= OnInteractPerformed;
        controls.Player.Disable();
    }

    private void OnInteractPerformed(InputAction.CallbackContext context)
    {
        InteractPressed?.Invoke();
    }

    private void OnConfirmPerformed(InputAction.CallbackContext context)
    {
        UIConfirmPressed?.Invoke();
    }

    public void StartUI()
    {
        controls.Player.Disable();
        controls.UINavigation.Enable();
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }

    public void StartGameplay()
    {
        controls.Player.Enable();
        controls.UINavigation.Disable();
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }
}
