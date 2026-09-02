using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInteraction : MonoBehaviour
{
    private readonly List<Interactable> nearbyInteractables = new();
    [SerializeField]
    private PlayerInputReader input;

    private void Awake()
    {
        if (input == null)
        {
            input = GetComponentInChildren<PlayerInputReader>();
        }
    }
    // Start is called before the first frame update
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
        Interactable closest = GetClosestInteractable();

        if (closest != null)
        {
            closest.Interact();
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
