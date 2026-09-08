using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEditor.ShaderGraph;
using UnityEngine;
using UnityEngine.UI;

public class DialogueManager : MonoBehaviour
{

    private DialogueNode currentNode;
    private TextMeshProUGUI textObject;
    private Image characterPortrait;
    private CharacterDialogue currentCharacter;
    private DiaEmote currentEmotion = 0;
    private DialogueBox dialogueBox;

    [SerializeField]
    PlayerInputReader input;

    [SerializeField]
    private DialogueChoiceMenu choiceMenu;
    [SerializeField]
    private DialogueStyle defaultStyle;
    [SerializeField]
    private DialogueChoiceStyle defaultChoiceStyle;
    [SerializeField]
    private CharacterDialogue defaultCharacter;


    [DoNotSerialize]
    public static DialogueManager Instance;

    [DoNotSerialize]
    public static bool isDialogue = false;

    bool evaluatingConditions = false;
    bool makingChoice = false;

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

    private void OnEnable()
    {
        input.UIConfirmPressed += AdvanceDialogue;
    }

    private void OnDisable()
    {
        input.UIConfirmPressed -= AdvanceDialogue;
    }

    public void StartDialogue(DialogueNode startNode)
    {
        isDialogue = true;
        input.StartUI();

        currentNode = startNode;

        EvaluateNode(startNode);
    }

    public void AdvanceDialogue()
    {
        if (!evaluatingConditions && !makingChoice && isDialogue)
        {
            if (currentNode.next != null)
            {
                EvaluateNode(currentNode.next);
            }
            else
            {
                EndDialogue();
            }
        }
    }

    private void EndDialogue()
    {
        input.StartGameplay();
        RemoveDialogueBox();
        isDialogue = false;
    }

    void UpdateDialogueBox(DialogueStyle style)
    {
        RemoveDialogueBox();

        Debug.Log("DialogueBox created");
        dialogueBox = Instantiate(style.prefab, transform).GetComponent<DialogueBox>();

        textObject = dialogueBox.textObject;
        characterPortrait = dialogueBox.characterPortrait;
        dialogueBox.dialogueBoxImage.sprite = style.texture;
        dialogueBox.textObject.fontSize = style.fontSize;
        dialogueBox.textObject.font = style.font;
        dialogueBox.textObject.color = style.textColor;
    }

    void RemoveDialogueBox()
    {
        Debug.Log("RemoveDialogueBox run");
        if (dialogueBox != null)
        {
            Destroy(dialogueBox.gameObject);
            Debug.Log("DialogueBox destroyed");
        }
            
    }

    void EvaluateNode(DialogueNode node)
    {
        currentNode = node;
        if (node.style)
        {
            UpdateDialogueBox(node.style);
        }
        switch (node) {
            case DialogueStart startNode:
                if (!node.style)
                {
                    UpdateDialogueBox(defaultStyle);
                }
                EvaluateNode(startNode.next);
                break;
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
        dialogueBox.SetText(node.text);

        if (node.character != null)
        {
            currentCharacter = node.character;
        } else if (currentCharacter == null)
        {
            currentCharacter = defaultCharacter;
        }
        currentEmotion = node.emotion;
            
        dialogueBox.SetCharacterSprite(currentCharacter.dialogueSprites[(int)currentEmotion]);
    }

    void ShowDialogueChoice(DialogueChoiceNode node)
    {
        makingChoice = true;
        foreach (DialogueChoice choice in node.choices)
        {
            if (choice.style == null)
            {
                choice.style = defaultChoiceStyle;
            }
            choiceMenu.AddChoice(choice, () => MakeChoice(choice));
        }
        choiceMenu.SetNavigation();
        choiceMenu.ShowChoices();
    }

    void MakeChoice(DialogueChoice choice)
    {
        makingChoice = false;
        choiceMenu.RemoveChoices();
        EvaluateNode(choice.next);
    }

    //TODO Update to take in parameters once those are in place.
    void EvaluateCondition(ConditionNode node)
    {
        evaluatingConditions = true;
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
        evaluatingConditions = false;
    }
}
