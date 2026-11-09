using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ChoseAmountMenu : Menu
{
    ShopItemButton shopButton;
    Action<Item, int> onItemSelected;
    [SerializeField] Button addButton;
    [SerializeField] Button subButton;
    [SerializeField] Button sellButton;
    [SerializeField] Button cancelButton;
    [SerializeField] TextMeshProUGUI amountText;
    private int amount;

    public void Initialize(ShopItemButton parentButton, Action<Item, int> callback)
    {
        shopButton = parentButton;
        onItemSelected = callback;

        UpdateVisuals();
        base.Open();

    }

    public void Add()
    {
        amount = Mathf.Min(shopButton.entry.amount, amount++);
        UpdateVisuals();
    }

    public void Sub()
    {
        amount = Mathf.Max(0, amount--);
        UpdateVisuals();
    }

    private void UpdateVisuals()
    {
        amountText.text = $"{amount}x";
    }

    public void Cancel()
    {
        SelectItem(null, 0);
    }

    protected void SelectItem(Item item, int amount)
    {
        Action<Item, int> callback = onItemSelected;
        onItemSelected = null;
        print("item selected");

        callback?.Invoke(item, amount);

        base.Close();
        Destroy(this.gameObject);
    }
}
