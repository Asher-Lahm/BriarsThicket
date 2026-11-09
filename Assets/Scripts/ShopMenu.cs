using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShopMenu : Menu
{
    [SerializeField] DayNightManager dayNightManager;
    public List<InventoryEntry> items = new List<InventoryEntry>();
    private ItemSelector selectorMenu;
    [SerializeField] ItemSelector itemSelectorPrefab;
    [SerializeField] Inventory inventory;
    // Start is called before the first frame update
    void Awake()
    {
        dayNightManager.OnBecomeDay += UpdateStock;
    }

    private void UpdateStock()
    {

    }

    private void UpdateDisplay()
    {

    }

    public void ShowBuying()
    {

    }

    public void ShowSelling()
    {
        selectorMenu = Instantiate(itemSelectorPrefab, transform);
        selectorMenu.Initialize<Item, Item>(inventory.GetItems<SeedItem>(), SellConfirm);
    }

    private void SellConfirm(Item item)
    {

        //summon amount menu
    }

    private void Sell(Item item, int amount)
    {

    }

    
}
