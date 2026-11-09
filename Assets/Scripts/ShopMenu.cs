using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using TMPro;

public class ShopMenu : Menu
{
    [SerializeField] DayNightManager dayNightManager;
    private Inventory stock;
    private ShopItemSelect selectorMenu;
    [SerializeField] ShopItemSelect itemSelectorPrefab;
    [SerializeField] RectTransform selectorSpawn;
    [SerializeField] Inventory inventory;
    [SerializeField] ChooseAmountMenu amountMenu;
    [SerializeField] GameObject mainButtons;
    [SerializeField] TextMeshProUGUI moneyText;
    bool isBuying;
    // Start is called before the first frame update
    void Awake()
    {
        dayNightManager.OnBecomeDay += UpdateStock;
        amountMenu.Initialize(this, inventory);
        this.stock = GetComponent<Inventory>();
        UpdateMoneyDisplay();
    }

    private void UpdateStock()
    {

    }

    private void UpdateMoneyDisplay()
    {
        moneyText.text = $"${inventory.money}";
    }

    private void UpdateDisplay(ItemSelectButton button)
    {

    }

    private void DeleteSelectorMenu()
    {
        if (selectorMenu != null)
        {
            Destroy(selectorMenu.gameObject);
            selectorMenu = null;
        }
    }
    private void CloseAmountMenu()
    {
        if (amountMenu.isActiveAndEnabled)
        {
            amountMenu.Close();
        }
    }

    public void ShowBuying()
    {
        DeleteSelectorMenu();
        CloseAmountMenu();
        isBuying = true;
        selectorMenu = Instantiate(itemSelectorPrefab, selectorSpawn);
        InventoryEntry[] seedArray = stock.GetItems<SeedItem>();
        InventoryEntry[] fruitArray = stock.GetItems<FruitItem>();
        InventoryEntry[] fullArray = seedArray.Concat(fruitArray).ToArray();

        selectorMenu.Initialize<Item, Item>(fullArray, BuyConfirm);
        selectorMenu.UpdatePrices(isBuying);
        mainButtons.SetActive(false);
        selectorMenu.ItemUpdated += UpdateDisplay;
    }
    private void BuyConfirm(Item item)
    {
        CloseAmountMenu();
        if (item == null)
        {
            mainButtons.SetActive(true);
            DeleteSelectorMenu();
            return;
        }
        amountMenu.NewItem(item, stock.GetAmount(item), isBuying);
        amountMenu.Open();
    }
    public void Buy(Item item, int amount, int cost)
    {
        inventory.AddItemToInventory(item, amount);
        inventory.money -= cost;
        UpdateMoneyDisplay();
        ShowBuying();
    }

    public void ShowSelling()
    {
        DeleteSelectorMenu();
        CloseAmountMenu();
        isBuying = false;
        selectorMenu = Instantiate(itemSelectorPrefab, selectorSpawn);
        InventoryEntry[] seedArray = inventory.GetItems<SeedItem>();
        InventoryEntry[] fruitArray = inventory.GetItems<FruitItem>();
        InventoryEntry[] fullArray = seedArray.Concat(fruitArray).ToArray();
        selectorMenu.Initialize<Item, Item>(fullArray, SellConfirm);
        selectorMenu.UpdatePrices(isBuying);
        mainButtons.SetActive(false);
        selectorMenu.ItemUpdated += UpdateDisplay;
    }

    private void SellConfirm(Item item)
    {
        CloseAmountMenu();
        if (item == null)
        {
            mainButtons.SetActive(true);
            DeleteSelectorMenu();
            return;
        }
        amountMenu.NewItem(item, inventory.GetAmount(item), isBuying);
        amountMenu.Open();
    }

    public void Sell(Item item, int amount, int cost)
    {
        inventory.RemoveItemFromInventory(item, amount);
        inventory.money += cost;
        UpdateMoneyDisplay();
        ShowSelling();
    }
}
