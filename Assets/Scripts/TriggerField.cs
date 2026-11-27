using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class TriggerField : MonoBehaviour
{
    [SerializeField] protected Collider triggerCollider;

    public virtual void Trigger(InteractionContext context)
    {

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent<PlayerInteraction>(out PlayerInteraction pi))
        {
            Trigger(pi.GetIC());
        }
    }
}
