using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShopTrigger : TriggerField
{
    [SerializeField] ShopMenu shop;

    private void Awake()
    {
        if (triggerCollider == null)
            triggerCollider = GetComponent<Collider>();
    }

    public override void Trigger(InteractionContext context)
    {
        shop.Open();
    }
}
