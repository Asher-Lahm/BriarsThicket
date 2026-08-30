using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using TMPro;

public class DialogueManager : MonoBehaviour
{

    private DialogueLine currentDialogue;
    private DialogueBox dialogueBox;
    private TextMeshProUGUI textObject;
    private DialogueStyle defaultStyle;


    [DoNotSerialize]
    public static DialogueManager Instance;

    [DoNotSerialize]
    public static bool isDialogue = false;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }
    void Start()
    {
        
    }

    public void StartDialogue(DialogueNode startNode)
    {
        if (startNode.style)
        {
            UpdateDialogueBox(startNode.style);
        } else
        {
            UpdateDialogueBox(defaultStyle);
        }
            EvaluateNode(startNode);
    }

    void UpdateDialogueBox(DialogueStyle style)
    {
        Destroy(dialogueBox.gameObject);
        dialogueBox = Instantiate(style.prefab).GetComponent<DialogueBox>();
    }

    void EvaluateNode(DialogueNode node)
    {
        if (node.style)
        {
            UpdateDialogueBox(node.style);
        }
        switch (node) {
            case ConditionNode conditionNode:
                //ConditionNodeLogic(conditionNode);
                break;
            case DialogueLine dialogueLine:
                ShowDialogueLine(dialogueLine);
                break;
            case DialogueChoiceNode choiceNode:
                ShowDialogueChoice(choiceNode);
                break;
        }
    }

    void ShowDialogueLine(DialogueLine node)
    {
        dialogueBox.textObject.text = node.text;
    }

    void ShowDialogueChoice(DialogueChoiceNode node)
    {
        foreach (DialogueChoice choice in node.choices)
        {
            Instantiate(choice.style.prefab, dialogueBox.choiceContainer);
        }
    }
}
