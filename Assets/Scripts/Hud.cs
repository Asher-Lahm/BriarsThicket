using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Hud : MonoBehaviour
{
    [SerializeField] PlayerInputReader input;
    [SerializeField] DebugMenu debug;
    private bool debugShown;

    private void OnEnable()
    {
        input.DebugPressed += ToggleMenu;
    }

    private void OnDisable()
    {
        input.DebugPressed -= ToggleMenu;
    }

    public void ToggleMenu()
    {
        debugShown = !debugShown;
        if (debugShown)
        {
            debug.Open();
        }
        else
        {
            debug.Close();
        }
    }
}
