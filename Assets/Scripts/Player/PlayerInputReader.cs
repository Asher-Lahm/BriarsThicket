using System;
using System.Collections;
using System.Collections.Generic;
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
    public event Action DialogueAdvancePressed;
    public event Action MenuConfirmPressed;

    public InputContext currentContext { get; private set; } = InputContext.Gameplay;

    void Awake()
    {
        controls = new PlayerControls();
    }

    void OnEnable()
    {
        controls.Player.Enable();
        controls.Player.Interact.performed += OnInteractPerformed;
    }

    void OnDisable()
    {
        controls.Player.Interact.performed -= OnInteractPerformed;
        controls.Player.Disable();
    }

    private void OnInteractPerformed(InputAction.CallbackContext context)
    {
        switch (currentContext)
        {
            case InputContext.Gameplay:
                InteractPressed?.Invoke();
                break;

            case InputContext.Dialogue:
                DialogueAdvancePressed?.Invoke();
                break;

            case InputContext.Menu:
                MenuConfirmPressed?.Invoke();
                break;
        }
    }

    public void SetContext(InputContext context)
    {
        currentContext = context;
    }
}
