using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using TMPro;
using System;

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
                EvaluateCondition(conditionNode);
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

    void EvaluateCondition(ConditionNode node)
    {
        bool conditionsTrue = true;
        foreach (PlayerStatCondition condition in node.playerStatConditions)
        {
            int statToCompare = 0;
            bool comparison= false;
            switch (condition.stat)
            {
                case PlayerStat.Money:
                    //statToCompare = ps.Money;
                    break;
            }
            switch (condition.comparison)
            {
                case Comparison.Equal:
                    comparison = statToCompare == condition.value;
                    break;
                case Comparison.GreaterThan:
                    comparison = statToCompare > condition.value;
                    break;
                case Comparison.GreaterThanOrEqual:
                    comparison = statToCompare >= condition.value;
                    break;
                case Comparison.LessThanOrEqual:
                    comparison = statToCompare <= condition.value;
                    break;
                case Comparison.LessThan:
                    comparison = statToCompare < condition.value;
                    break;
            }

            conditionsTrue = conditionsTrue && comparison;
        }
        foreach (PlayerStatCondition condition in node.playerStatConditions)
        {
            bool comparison = false;


            conditionsTrue = conditionsTrue && comparison;
        }

        if (conditionsTrue)
        {
            EvaluateNode(node.trueNode);
        } else
        {
            EvaluateNode(node.falseNode);
        }
    }
}
