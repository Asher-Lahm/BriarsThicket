using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Items/Fruit")]
public class FruitItem : InventoryItem, IPurchasable, IAttackItem, ISellable
{
    [SerializeField]
    private int purchasePrice;
    public int PurchasePrice => purchasePrice;

    [SerializeField]
    private int sellPrice;
    public int SellPrice => sellPrice;

    [SerializeField]
    private BriarAttackData[] briarAttack;
    public BriarAttackData[] BriarAttack => briarAttack;

}
