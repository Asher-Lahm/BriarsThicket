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

    public override void UpdateVisuals()
    {
        if (entry.item is ISellable && entry.item is IPurchasable)
        itemQuantityText.text = $"{entry.amount}";
        itemNameText.text = $"{entry.item.itemName}";
    }
}
