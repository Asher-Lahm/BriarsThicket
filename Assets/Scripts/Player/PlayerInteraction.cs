using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInteraction : MonoBehaviour
{
    private readonly List<Interactable> nearbyInteractables = new();
    [SerializeField]
    private PlayerInputReader input;
    private BriarProgress bp;
    private InteractionContext ic;
    [SerializeField] DayNightManager dnManager;
    private Interactable closestInteractable;

    private void Awake()
    {
        if (input == null)
        {
            input = GetComponentInChildren<PlayerInputReader>();
        }
        bp = GetComponent<BriarProgress>();
        ic = new InteractionContext(bp, GetComponent<Inventory>(), dnManager);
    }
    public void AddInteractable(Interactable interactable)
    {
        nearbyInteractables.Add(interactable);
        Debug.Log("InteractableAdded");
    }

    public void RemoveInteractable(Interactable interactable)
    { 
        nearbyInteractables.Remove(interactable);
    }

    private void OnEnable()
    {
        input.InteractPressed += TryInteract;
    }

    private void OnDisable()
    {
        input.InteractPressed -= TryInteract;
    }

    private void TryInteract()
    {
        if (closestInteractable != null)
        {
            closestInteractable.Interact(ic);
        }
    }

    private Interactable GetClosestInteractable()
    {
        Interactable closest = null;
        float closestDistance = Mathf.Infinity;

        foreach (Interactable interactable in nearbyInteractables)
        {
            float distance = (transform.position - interactable.transform.position).sqrMagnitude;

            if (distance < closestDistance)
            {
                closestDistance = distance;
                closest = interactable;
            }
        }
        return closest;
    }

    private void Update()
    {
        if (closestInteractable == null && nearbyInteractables.Count == 0)
            return;
        Interactable newClosestInteractable = GetClosestInteractable();
        if (newClosestInteractable != closestInteractable)
        {
            if (closestInteractable != null)
            {
                closestInteractable.DestroyInteractIndicator();
            }
            closestInteractable = newClosestInteractable;
            if (closestInteractable != null)
            {
                closestInteractable.SummonInteractIndicator(ic);
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        Interactable interactable = other.GetComponentInParent<Interactable>();
        if (interactable != null)
        {
            nearbyInteractables.Add(interactable);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        Interactable interactable = other.GetComponentInParent<Interactable>();
        if (interactable != null)
        {
            nearbyInteractables.Remove(interactable);
        }
    }
}
