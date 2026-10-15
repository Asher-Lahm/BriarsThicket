using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "Items/Seed")]
public class SeedItem : Item, IPurchasable, ISellable
{
    [SerializeField]
    private int purchasePrice;
    public int PurchasePrice => purchasePrice;

    [SerializeField]
    private int sellPrice;
    public int SellPrice => sellPrice;

    [SerializeField]
    private PlantData plantToGrow;
    public PlantData PlantToGrow => plantToGrow;

}
