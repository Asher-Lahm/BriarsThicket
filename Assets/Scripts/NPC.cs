using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : Interactable
{
    [SerializeField] List<DialogueLine> dialogueSequences;
    Collider interactionRange;
    private int dialogueIndex = 0;
    void Start()
    {
        if (interactionRange == null)
        {
            interactionRange = GetComponentInChildren<Collider>();
        }
    }

    // Update is called once per frame
    public override void Interact()
    {
        //DialogueManager.Instance.Dialogue(dialogueSequences[dialogueCount]);
        dialogueIndex++;
        if (dialogueIndex >= dialogueSequences.Count)
            dialogueIndex = dialogueSequences.Count - 1;
    }
}
