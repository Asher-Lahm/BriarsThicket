using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShopInteractable : Interactable
{
    [SerializeField] ShopMenu shop;

    public override void Interact()
    {
        shop.Open();
    }
}
