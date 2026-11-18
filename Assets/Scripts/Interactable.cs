using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Interactable : MonoBehaviour
{
    [SerializeField] protected Collider interactionRange;
    protected InteractionIndicatorSummoner indSummoner;
    public bool isInteractable = true;

    protected virtual void Awake()
    {
        indSummoner = GetComponent<InteractionIndicatorSummoner>();
    }
    public virtual void Interact(InteractionContext context)
    {
        if (!isInteractable)
            return;
    }

    public virtual void SummonInteractIndicator(InteractionContext ic)
    {
        if (indSummoner != null && isInteractable)
            indSummoner.Summon();
    }

    public virtual void DestroyInteractIndicator()
    {
        if (indSummoner != null)
            indSummoner.Delete();
    }

    public virtual void SetInteractable(bool interaction)
    {
        isInteractable = interaction;
        if (!interaction)
        {
            DestroyInteractIndicator();
        }
    }
}
