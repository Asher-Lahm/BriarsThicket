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
    [SerializeField] private TextMeshProUGUI plantEnergyText;
    [SerializeField] private GameObject energyImage;
    [SerializeField] private Transform plantEnergyContainer;
    [SerializeField] private TextMeshProUGUI briarEnergyText;
    [SerializeField] private Transform briarEnergyContainer;
    [SerializeField] private TextMeshProUGUI currentEnergy;
    [SerializeField] private Transform currentEnergyContainer;
    [SerializeField] private Image itemImage;
    BattleOptionsContainer selectorMenu;
    [SerializeField] Inventory inventory;

    [SerializeField] BattleManager bm;
    RecipientSelectMenu recipientSelectMenu;
    [SerializeField] RecipientSelectMenu recipSelectPrefab;
    [SerializeField] GameObject mainButtons;
    [SerializeField] BriarAttackData runAway;
    Item selectedParentItem;

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
        selectorMenu.Initialize<WeaponItem, BriarAttackData>(null, ChooseRecipient);
        selectorMenu.ItemUpdated += OnItemUpdated;
        selectorMenu.DisableButtons(bm.GetBriarEnergy());
    }

    public void RunFromBattle()
    {
        bm.EndBattle();
    }

    private void DestroySelectorMenu()
    {
        if (selectorMenu != null)
        {
            selectorMenu.ItemUpdated -= OnItemUpdated;
            selectorMenu.Close();
            Destroy(selectorMenu.gameObject);
            selectorMenu = null;
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
        if (attack == runAway)
        {
            RunFromBattle();
        }
        mainButtons.SetActive(false);
        if (attack.affectsSelf)
        {
            QueueBriarAttack(attack, bm.briarBattle);
        }
        else if (!attack.attacksAllEnemies)
        {
            recipientSelectMenu = Instantiate(recipSelectPrefab, sideMenu.transform);
            recipientSelectMenu.Initialize(attack, bm.currentBed, bm.briarBattle, QueueBriarAttack);
            recipientSelectMenu.DisableButtons(bm.GetBriarEnergy());
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
        if (selectedParentItem is FruitItem fruitItem)
        {
            inventory.RemoveItemFromInventory(fruitItem, 1);
        }
    }

    public void UpdateBriarEnergyGraphic()
    {
        foreach (Transform child in currentEnergyContainer)
        {
            Destroy(child.gameObject);
        }
        currentEnergy.text = $"{bm.GetBriarEnergy()} Energy";

        for (int i = 0; i < bm.GetBriarEnergy(); i++)
        {
            Instantiate(energyImage, currentEnergyContainer);
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
            plantEnergyText.text = $"{attackButton.energyCostPlant} Energy | Plant";
            selectedParentItem = attackButton.parentItem;
            
            for (int i = 0; i < attackButton.energyCostPlant; i++)
            {
                Instantiate(energyImage, plantEnergyContainer);
            }

            if (attackButton.energyCostPlant != attackButton.energyCostBriar)
            {
                briarEnergyText.text = $"{attackButton.energyCostBriar} Energy | Briar";
                for (int i = 0; i < attackButton.energyCostBriar; i++)
                {
                    Instantiate(energyImage, briarEnergyContainer);
                }
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
        plantEnergyText.text = "";
        briarEnergyText.text = "";
        itemImage.gameObject.SetActive(false);
        foreach (Transform child in plantEnergyContainer)
        {
            Destroy(child.gameObject);
        }
        foreach (Transform child in briarEnergyContainer)
        {
            Destroy(child.gameObject);
        }
    }
}
