using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Items/Weapon")]
public class WeaponItem : Item, IPurchasable, IAttackItem
{
    [SerializeField]
    private int purchasePrice;
    public int PurchasePrice => purchasePrice;

    [SerializeField]
    private BriarAttackData[] briarAttack;
    public BriarAttackData[] BriarAttack => briarAttack;
}
