using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SeedItem : InventoryItem, IPurchasable, ISellable
{
    [SerializeField]
    private int purchasePrice;
    public int PurchasePrice => purchasePrice;

    [SerializeField]
    private int sellPrice;
    public int SellPrice => sellPrice;

}
