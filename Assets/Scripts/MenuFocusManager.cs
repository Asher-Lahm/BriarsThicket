using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class MenuFocusManager : MonoBehaviour
{
    private Stack<Menu> menuStack = new();
    [SerializeField] PlayerInputReader playerInput;

    public static MenuFocusManager Instance;


    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        } else if (Instance == this)
        {
            Destroy(gameObject);
        }
    }
    public void OpenMenu(Menu menu)
    {
        if (menuStack.Count > 0)
        {
            menuStack.Peek().SaveSelection();
        }

        menuStack.Push(menu);
        menu.Focus();
        Debug.Log("UI nav");
        playerInput.StartUI();
    }

    public void CloseTopMenu()
    {
        if (menuStack.Count <= 0)
            return;
            

        menuStack.Pop();

        if (menuStack.Count > 0)
        {
            menuStack.Peek().Focus();
        } else
        {
            playerInput.StartGameplay();
            EventSystem.current.SetSelectedGameObject(null);
        }
    }
}
