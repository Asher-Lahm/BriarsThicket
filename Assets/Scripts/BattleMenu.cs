using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class BattleMenu : Menu
{
    [SerializeField] GameObject sideMenu;
    [SerializeField] ItemSelector selectorPrefab;
    [SerializeField] ItemSelector actionPrefab;
    [SerializeField] private TextMeshProUGUI itemNameText;
    [SerializeField] private TextMeshProUGUI itemDescriptionText;
    [SerializeField] private TextMeshProUGUI energyText;
    [SerializeField] private GameObject energyImage;
    [SerializeField] private Transform energyContainer;
    [SerializeField] private Image itemImage;
    ItemSelector selectorMenu;
    [SerializeField] Inventory inventory;
    [SerializeField] BriarBattle briarBattle;
    [SerializeField] Queue<BriarAttackData> queuedAttacks = new Queue<BriarAttackData>();
    [SerializeField] BattleManager bm;
    [SerializeField] RecipientSelectMenu recipientSelectMenu;

    bool actionToggled = false;
    bool attackToggled = false;
    bool itemToggled = false;

    public void ToggleAttackMenu()
    {
        attackToggled = !attackToggled;
        actionToggled = false;
        itemToggled = false;
        DestroySelectorMenu();
        OnItemUpdated(null);
        if (!attackToggled)
        {
            sideMenu.SetActive(false);
            return;
        }

        OpenAttackMenu();
    }

    private void OpenAttackMenu()
    {
        sideMenu.SetActive(true);

        selectorMenu = null;
        selectorMenu = Instantiate(selectorPrefab, sideMenu.transform);
        selectorMenu.Initialize<WeaponItem, BriarAttackData>(inventory.GetItems<WeaponItem>(), ChooseRecipient);
        selectorMenu.ItemUpdated += OnItemUpdated;
    }

    public void ToggleItemMenu()
    {
        itemToggled = !itemToggled;
        actionToggled = false;
        attackToggled = false;
        DestroySelectorMenu();
        OnItemUpdated(null);
        if (!itemToggled)
        {
            sideMenu.SetActive(false);
            return;
        }
        OpenItemMenu();
    }

    private void OpenItemMenu()
    {
        sideMenu.SetActive(true);

        selectorMenu = null;
        selectorMenu = Instantiate(selectorPrefab, sideMenu.transform);
        selectorMenu.Initialize<FruitItem, BriarAttackData>(inventory.GetItems<FruitItem>(), ChooseRecipient);
        selectorMenu.ItemUpdated += OnItemUpdated;
    }

    public void ToggleActionMenu()
    {
        actionToggled = !actionToggled;
        attackToggled = false;
        itemToggled = false;
        DestroySelectorMenu();
        OnItemUpdated(null);
        if (!actionToggled)
        {
            sideMenu.SetActive(false);
            return;
        }
        OpenActionMenu();
    }

    private void OpenActionMenu()
    {
        sideMenu.SetActive(true);

        selectorMenu = null;
        selectorMenu = Instantiate(actionPrefab, sideMenu.transform);
    }

    public void RunFromBattle()
    {
        
    }

    private void DestroySelectorMenu()
    {
        if (selectorMenu != null)
        {
            selectorMenu.ItemUpdated -= OnItemUpdated;
            selectorMenu.Close();
            Destroy(selectorMenu);
        }
    }


    private void ChooseRecipient(BriarAttackData item)
    {
        sideMenu.SetActive(false);
        if (item == null)
        {
            if (attackToggled)
            {
                OpenAttackMenu();
            } else if (itemToggled)
            {
                OpenItemMenu();
            } else if (actionToggled)
            {
                OpenActionMenu();
            }
            return;
        }
        int energyUsed = queuedAttacks.Sum(attack => attack.energyCost);
        if (item.energyCost > briarBattle.maxEnergy - energyUsed)
            return;
        if (!item.attacksAllEnemies && !item.affectsSelf)
        {
            recipientSelectMenu.Open();
            recipientSelectMenu.Initialize(item);
        }
    }

    private void OnDisable()
    {
        if (selectorMenu)
            selectorMenu.ItemUpdated -= OnItemUpdated;
    }
    private void OnDestroy()
    {
        if (selectorMenu)
            selectorMenu.ItemUpdated -= OnItemUpdated;
    }

    private void OnItemUpdated(ItemSelectButton selectedItemButton)
    {
        CleanItemInfo();
        if (selectedItemButton == null)
        {
            return;
        }
        if (!selectedItemButton.updateUI)
        {
            return;
        }
        itemImage.gameObject.SetActive(true);
        itemNameText.text = selectedItemButton.optionName;
        itemDescriptionText.text = selectedItemButton.optionDescription;
        if (selectedItemButton is BattleOptionButton)
        {
            BattleOptionButton attackButton = (BattleOptionButton)selectedItemButton;
            itemImage.sprite = attackButton.weaponItem.texture;
            energyText.text = $"{attackButton.energyCost} Energy";
            int i = 0;
            while (i < attackButton.energyCost)
            {
                Instantiate(energyImage, energyContainer);
                i++;
            }
        }
    }

    private void CleanItemInfo()
    {
        itemNameText.text = "";
        itemDescriptionText.text = "";
        energyText.text = "";
        itemImage.gameObject.SetActive(false);
        foreach (Transform child in energyContainer)
        {
            Destroy(child.gameObject);
        }
    }

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
