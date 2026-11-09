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
    [SerializeField] Button buyButton;
    [SerializeField] Button cancelButton;
    [SerializeField] Button clickBlock;
    [SerializeField] TextMeshProUGUI amountText;
    [SerializeField] TextMeshProUGUI moneyText;
    ShopMenu shopMenu;
    int max;
    private bool isBuying;
    private int amount;
    private int finalCost;
    private int totalCost;
    private Inventory inventory;
    public void Initialize(ShopMenu shop, Inventory playerInventory)
    {
        shopMenu = shop;
        inventory = playerInventory;
    }
    public void NewItem(Item inItem, int inItemAmount, bool buyingState)
    {
        item = inItem;
        amount = 0;
        
        isBuying = buyingState;
        if (isBuying)
        {
            if (item is IPurchasable purchasable)
            {
                finalCost = purchasable.PurchasePrice;
                max = inventory.money / finalCost;
            }
        } else
        {
            max = inItemAmount;
        }
        UpdateVisuals();
        base.Open();
    }

    public void Add()
    {
        amount = Mathf.Min(max, amount++);
        totalCost = amount * finalCost;
        UpdateVisuals();
    }

    public void Sub()
    {
        amount = Mathf.Max(0, amount--);
        totalCost = amount * finalCost;
        UpdateVisuals();
    }

    private void UpdateVisuals()
    {
        amountText.text = $"{amount}x";
        moneyText.text = $"{totalCost}$";

        if (isBuying)
        {
            sellButton.gameObject.SetActive(false);
            buyButton.gameObject.SetActive(true);
        }
        else
        {
            sellButton.gameObject.SetActive(true);
            buyButton.gameObject.SetActive(false);
        }

            addButton.interactable = true;
        if (amount >= max)
        {
            addButton.interactable = false;
        }

        subButton.interactable = true;
        if (amount <= 0)
        {
            addButton.interactable = false;
        }
    }

    public void Sell()
    {
        shopMenu.Sell(item, amount, totalCost);
        base.Close();
    }

    public void Buy()
    {
        shopMenu.Buy(item, amount, totalCost);
        base.Close();
    }

    public void Cancel()
    {
        base.Close();
    }
}
