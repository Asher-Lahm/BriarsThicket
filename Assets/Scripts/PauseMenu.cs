using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using static UnityEngine.EventSystems.EventTrigger;

public class PauseMenu : Menu
{
    [SerializeField] MenuEntry[] menus;
    private Menu currentMenu;
    private bool openingProper = false;

    [System.Serializable]
    public class MenuEntry
    {
        public Toggle toggle;
        public Menu menu;
    }
    private void Awake()
    {
        foreach (MenuEntry entry in menus)
        {
            entry.toggle.onValueChanged.AddListener(isOn =>
            {
                if (isOn)
                    SwitchMenu(entry.menu);
            });
            entry.menu.gameObject.SetActive(false);
        }

        if (!openingProper)
        {
            gameObject.SetActive(false);
        }
        
    }

    public void OpenMenu(int menuInd)
    {
        openingProper = true;
        if (menuInd >= 0 && menuInd < menus.Length)
        {
            foreach (MenuEntry entry in menus)
            {
                entry.menu.Initialize();
            }
            base.Open();
            SwitchMenu(menus[menuInd].menu);
            menus[menuInd].toggle.SetIsOnWithoutNotify(true);
            Time.timeScale = 0;
        }
    }

    public void SwitchMenu(Menu menu)
    {
        print($"swtich to {menu.name}");
        if (currentMenu == menu)
            return;
        currentMenu?.Close();
        currentMenu = menu;
        currentMenu.Open();
    }

    public void CloseAllMenus()
    {
        currentMenu.Close();
        currentMenu = null;
        base.Close();
        Time.timeScale = 1;
    }
}
