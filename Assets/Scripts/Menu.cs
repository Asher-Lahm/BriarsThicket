using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections.Generic;
using UnityEngine.UI;

public class Menu : MonoBehaviour
{
    [Tooltip("Button selected when this gameObject is enabled.")]
    [SerializeField] protected GameObject initialSelection;
    private GameObject newInitialSelection;
    [SerializeField] private MenuFocusManager menuFocusManager;
    private GameObject savedSelection;

    private void Awake()
    {
        savedSelection = initialSelection;
    }
    public void Open()
    {
        if (menuFocusManager == null || !menuFocusManager.isActiveAndEnabled)
        {
            menuFocusManager = MenuFocusManager.Instance;
        }
        gameObject.SetActive(true);
        menuFocusManager.OpenMenu(this);
    }

    public void Close()
    {
        gameObject.SetActive(false);
        if (menuFocusManager == null)
        {
            menuFocusManager = MenuFocusManager.Instance;
        }
        menuFocusManager.CloseTopMenu();
        print("menu closed");
    }

    public void SaveSelection()
    {
        savedSelection = EventSystem.current.currentSelectedGameObject;
    }

    public void Focus()
    {
        if (newInitialSelection != null && newInitialSelection.activeInHierarchy)
        {
            EventSystem.current.SetSelectedGameObject(newInitialSelection);
        }
        else if (savedSelection != null && savedSelection.activeInHierarchy)
        {
            EventSystem.current.SetSelectedGameObject(savedSelection);
        }
        else
        {
            ResetFocus();
        }
    }
    private void ResetFocus()
    {
        EventSystem.current.SetSelectedGameObject(initialSelection);
    }
    
    public void ChangeInitialSelection(GameObject button)
    {
        newInitialSelection = button;
    }
}