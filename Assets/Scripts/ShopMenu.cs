using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShopMenu : Menu
{
    [SerializeField] DayNightManager dayNightManager;
    private Inventory stock;
    private ItemSelector selectorMenu;
    [SerializeField] ItemSelector itemSelectorPrefab;
    [SerializeField] Inventory inventory;
    [SerializeField] ChooseAmountMenu amountMenu;
    bool isBuying;
    // Start is called before the first frame update
    void Awake()
    {
        dayNightManager.OnBecomeDay += UpdateStock;
        amountMenu.Initialize(this);
        this.stock = GetComponent<Inventory>();
    }

    private void UpdateStock()
    {

    }

    private void UpdateDisplay(ItemSelectButton button)
    {

    }

    public void ShowBuying()
    {
        isBuying = true;
    }

    public void ShowSelling()
    {
        isBuying = false;
        selectorMenu = Instantiate(itemSelectorPrefab, transform);
        selectorMenu.Initialize<Item, Item>(inventory.GetItems<SeedItem>(), SellConfirm);
        selectorMenu.ItemUpdated += UpdateDisplay;
    }

    private void SellConfirm(Item item)
    {
        amountMenu.NewItem(item, inventory.GetAmount(item), isBuying);
        
    }

    private void BuyConfirm(Item item)
    {
        amountMenu.NewItem(item, stock.GetAmount(item), isBuying);
    }

    private void Sell(Item item, int amount)
    {

    }

    
}
