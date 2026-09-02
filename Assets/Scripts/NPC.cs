using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : Interactable
{
    [SerializeField] List<DialogueStart> dialogueSequences;
    private int dialogueIndex = 0;
    void Start()
    {
        if (interactionRange == null)
        {
            interactionRange = GetComponentInChildren<Collider>();
        }
    }

    public override void Interact()
    {
        DialogueManager.Instance.StartDialogue(dialogueSequences[dialogueIndex]);
        dialogueIndex++;
        if (dialogueIndex >= dialogueSequences.Count)
            dialogueIndex = dialogueSequences.Count - 1;

        Debug.Log("NPC recieved interactRequest");
    }
}
