using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseMenu : Menu
{
    [SerializeField] Menu[] menus;
    [SerializeField] MenuSwitcher menuSwitcher;
    public void OpenMenu(int menuInd)
    {

        if (menuInd > 0 && menuInd < menus.Length)
        {
            
        }
    }

    public void CloseAllMenus()
    {

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
