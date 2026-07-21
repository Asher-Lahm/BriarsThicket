using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInteraction : MonoBehaviour
{
    private readonly List<IInteractable> nearbyInteractables = new();
    // Start is called before the first frame update
    public void AddInteractable(IInteractable interactable)
    {
        nearbyInteractables.Add(interactable);
    }

    public void RemoveInteractable(IInteractable interactable)
    { 
        nearbyInteractables.Remove(interactable);
    }

    private void Update()
    {
        if ()
    }
}
