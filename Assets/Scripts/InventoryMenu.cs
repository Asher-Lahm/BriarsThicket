using System.Collections;
using System.Collections.Generic;
using JetBrains.Rider.Unity.Editor;
using TMPro;
using UnityEngine;
using UnityEngine.UI;


public class InventoryMenu : Menu, ISwitchableMenu
{
    [SerializeField] Inventory inventory;
    [SerializeField] TextMeshProUGUI moneyText;
    [SerializeField] TextMeshProUGUI itemNameText;
    [SerializeField] TextMeshProUGUI itemDescriptionText;
    [SerializeField] Image itemImage;

    [SerializeField] ItemViewer weaponViewer;
    [SerializeField] ItemViewer fruitViewer;
    [SerializeField] ItemViewer seedViewer;

    private void OnEnable()
    {
        weaponViewer.ItemUpdated += OnItemUpdated;
        fruitViewer.ItemUpdated += OnItemUpdated;
        seedViewer.ItemUpdated += OnItemUpdated;
    }

    private void OnDisable()
    {
        weaponViewer.ItemUpdated -= OnItemUpdated;
        fruitViewer.ItemUpdated -= OnItemUpdated;
        seedViewer.ItemUpdated -= OnItemUpdated;
    }

    public override void Initialize()
    {
        weaponViewer.Initialize();
        fruitViewer.Initialize();
        seedViewer.Initialize();
        UpdateVisuals();
    }

    public void UpdateVisuals()
    {
        ClearMenus();
        CleanItemInfo();
        PopulateItems();
    }

    private void PopulateItems()
    {
        weaponViewer.PopulateItems(inventory.GetItems<WeaponItem>());
        fruitViewer.PopulateItems(inventory.GetItems<FruitItem>());
        seedViewer.PopulateItems(inventory.GetItems<SeedItem>());
        
    }

    private void ClearMenus()
    {
        weaponViewer.ClearItems();
        fruitViewer.ClearItems();
        seedViewer.ClearItems();
    }


    private void CleanItemInfo()
    {
        itemNameText.text = "";
        itemDescriptionText.text = "";
        itemImage.gameObject.SetActive(false);
    }

    private void OnItemUpdated(ItemViewerButton selectedItemButton)
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
        itemImage.sprite = selectedItemButton.entry.item.texture;
    }
}
