using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ShopItemButton : ItemSelectButton
{
    public TextMeshProUGUI itemNameText;
    public TextMeshProUGUI itemQuantityText;
    public TextMeshProUGUI itemPriceText;
    public int sellPrice;
    public int buyPrice;
    public bool isBuying = false;

    public void ShowPrice(bool isBuyingIn)
    {
        isBuying = isBuyingIn;
        UpdateVisuals();
    }

    public override void Initialize(InventoryEntry inItem, ItemSelector selector)
    {
        base.Initialize(inItem, selector);

        IPurchasable purchasable = (IPurchasable)entry.item;
        buyPrice = purchasable.PurchasePrice;

        ISellable sellable = (ISellable)entry.item;
        sellPrice = sellable.SellPrice;
    }
    public override void UpdateVisuals()
    {
        base.UpdateVisuals();
        itemQuantityText.text = $"{entry.amount}";
        itemNameText.text = $"{entry.item.itemName}";
        itemQuantityText.gameObject.SetActive(!isBuying);
        if(isBuying)
        {
            itemPriceText.text = $"${buyPrice}";
        } else
        {
            itemPriceText.text = $"${sellPrice}";
        }
    }
}
