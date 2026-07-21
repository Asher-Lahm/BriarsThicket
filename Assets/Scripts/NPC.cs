using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : MonoBehaviour, IInteractable
{
    [SerializeField] List<DialogueSequence> dialogue;
    [SerializeField] Collider interactionRange;
    private int dialogueCount = 0;
    void Start()
    {
        if (interactionRange == null)
        {
            interactionRange = GetComponentInChildren<Collider>();
        }
    }

    // Update is called once per frame
    void Interact()
    {
        DialogueManager.Instance.Enqueue(dialogue[dialogueCount]);
    }
}
