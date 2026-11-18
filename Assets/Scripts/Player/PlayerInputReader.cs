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
    public event Action DebugPressed;
    public event Action UIStart;
    public event Action GameplayStart;
    public event Action PausePressed;
    public event Action InventoryPressed;
    public event Action BackPressed;

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
        controls.UINavigation.Debug.performed += OnDebugPressed;
        controls.Player.Debug.performed += OnDebugPressed;
    }

    void OnDisable()
    {

        controls.Player.Interact.performed -= OnInteractPerformed;
        controls.UINavigation.Confirm.performed -= OnInteractPerformed;
        controls.UINavigation.Debug.performed -= OnDebugPressed;
        controls.Player.Disable();
        controls.UINavigation.Disable();
    }

    private void OnPausePressed(InputAction.CallbackContext context)
    {
        PausePressed?.Invoke();
    }
    private void OnInventoryPressed(InputAction.CallbackContext context)
    {
        InventoryPressed?.Invoke();
    }
    private void OnBackPressed(InputAction.CallbackContext context)
    {
        BackPressed?.Invoke();
    }
    private void OnDebugPressed(InputAction.CallbackContext context)
    {
        DebugPressed?.Invoke();
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
        Debug.Log("switched to UI nav");
        UIStart?.Invoke();
    }

    public void StartGameplay()
    {
        controls.Player.Enable();
        controls.UINavigation.Disable();
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        Debug.Log("Switched to gameplay");
        GameplayStart?.Invoke();
    }
}
