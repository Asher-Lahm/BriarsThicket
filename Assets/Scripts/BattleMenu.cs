using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class BattleMenu : Menu
{
    [SerializeField] GameObject sideMenu;
    [SerializeField] BattleOptionsContainer selectorPrefab;
    [SerializeField] BattleOptionsContainer actionPrefab;
    [SerializeField] private TextMeshProUGUI itemNameText;
    [SerializeField] private TextMeshProUGUI itemDescriptionText;
    [SerializeField] private TextMeshProUGUI energyText;
    [SerializeField] private GameObject energyImage;
    [SerializeField] private Transform energyContainer;
    [SerializeField] private TextMeshProUGUI briarEnergyText;
    [SerializeField] private Transform briarEnergyContainer;
    [SerializeField] private Image itemImage;
    BattleOptionsContainer selectorMenu;
    [SerializeField] Inventory inventory;

    [SerializeField] BattleManager bm;
    RecipientSelectMenu recipientSelectMenu;
    [SerializeField] RecipientSelectMenu recipSelectPrefab;
    [SerializeField] GameObject mainButtons;

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
        selectorMenu.DisableButtons(bm.GetBriarEnergy());
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
        selectorMenu.DisableButtons(bm.GetBriarEnergy());
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
        selectorMenu.DisableButtons(bm.GetBriarEnergy());
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

    private void DestroyRecipMenu()
    {
        if (recipientSelectMenu != null)
        {
            recipientSelectMenu.RecipientUpdated -= OnRecipientUpdated;
            recipientSelectMenu.Close();
            Destroy(selectorMenu);
        }
    }


    private void ChooseRecipient(BriarAttackData attack)
    {
        CleanItemInfo();
        attackToggled = false;
        itemToggled = false;
        actionToggled = false;
        if (attack == null)
        {
            sideMenu.SetActive(false);
            return;
        }
        mainButtons.SetActive(false);
        if (!attack.attacksAllEnemies && !attack.affectsSelf)
        {
            recipientSelectMenu = Instantiate(recipSelectPrefab, sideMenu.transform);
            recipientSelectMenu.Initialize(attack, bm.currentBed, QueueBriarAttack);
        }
    }

    private void QueueBriarAttack(BriarAttackData briarAttack, Combatant target)
    {
        sideMenu.SetActive(false);
        if (briarAttack == null || target == null)
        {
            mainButtons.SetActive(true);
            return;
        }
        bm.BriarQueueAttack(briarAttack, target);
    }

    public void UpdateBriarEnergyGraphic()
    {
        foreach (Transform child in briarEnergyContainer)
        {
            Destroy(child.gameObject);
        }
        briarEnergyText.text = $"{bm.GetBriarEnergy()} Energy";

        for (int i = 0; i < bm.GetBriarEnergy(); i++)
        {
            Instantiate(energyImage, briarEnergyContainer);
        }
    }

    public void StartOfTurn()
    {
        mainButtons.SetActive(true);
        DestroySelectorMenu();
        DestroyRecipMenu();
        CleanItemInfo();
        UpdateBriarEnergyGraphic();
    }

    private void OnDisable()
    {
        if (selectorMenu)
            selectorMenu.ItemUpdated -= OnItemUpdated;
        if (recipientSelectMenu)
            recipientSelectMenu.RecipientUpdated -= OnRecipientUpdated;
    }
    private void OnDestroy()
    {
        if (selectorMenu)
            selectorMenu.ItemUpdated -= OnItemUpdated;
        if (recipientSelectMenu)
            recipientSelectMenu.RecipientUpdated -= OnRecipientUpdated;
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
        if (selectedItemButton is BattleOptionButton attackButton)
        {
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

    private void OnRecipientUpdated(RecipientButton combatantButton)
    {

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
}
