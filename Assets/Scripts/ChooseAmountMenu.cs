using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ChooseAmountMenu : Menu
{
    Item item;
    [SerializeField] Button addButton;
    [SerializeField] Button subButton;
    [SerializeField] Button sellButton;
    [SerializeField] Button cancelButton;
    [SerializeField] Button clickBlock;
    [SerializeField] TextMeshProUGUI amountText;
    [SerializeField] TextMeshProUGUI moneyText;
    ShopMenu shopMenu;
    int max;
    private bool isBuying;
    private int amount;
    public void Initialize(ShopMenu shop)
    {
        shopMenu = shop;
    }
    public void NewItem(Item inItem, int inItemAmount, bool buyingState)
    {
        item = inItem;
        isBuying = buyingState;
        max = inItemAmount;

        UpdateVisuals();
        base.Open();
    }

    public void Add()
    {

        amount = Mathf.Min(10, amount++);
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

    public void Sell()
    {

    }

    public void Cancel()
    {
        base.Close();
    }
}
