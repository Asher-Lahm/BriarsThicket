using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Windows;

public class PauseCanvas : MonoBehaviour
{
    [SerializeField] PlayerInputReader input;
    [SerializeField] PauseMenu pauseMenu;
    private void OnEnable()
    {
        input.PausePressed += () => pauseMenu.OpenMenu(0);
        input.InventoryPressed += () => pauseMenu.OpenMenu(1);
        input.BackPressed += pauseMenu.CloseAllMenus;
        input.InventoryClosePressed += pauseMenu.CloseAllMenus;
    }

    private void OnDisable()
    {
        input.PausePressed -= () => pauseMenu.OpenMenu(0);
        input.InventoryPressed -= () => pauseMenu.OpenMenu(1);
        input.BackPressed -= pauseMenu.CloseAllMenus;
        input.InventoryClosePressed -= pauseMenu.CloseAllMenus;
    }

    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
