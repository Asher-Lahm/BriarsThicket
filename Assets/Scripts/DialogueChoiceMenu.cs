using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueChoiceMenu : Menu
{
    private List<ChoiceButton> buttonList = new List<ChoiceButton>();
    public void AddChoice(DialogueChoice choice, Action action)
    {
        Debug.Log("Choice added");
        ChoiceButton choiceObject = Instantiate(choice.style.prefab, transform).GetComponent<ChoiceButton>();
        choiceObject.choiceButtonImage.sprite = choice.style.texture;
        choiceObject.textObject.text = choice.text;
        choiceObject.button.onClick.AddListener(() => action());
        buttonList.Add(choiceObject);
    }

    public void ShowChoices()
    {
        ChangeInitialSelection(buttonList[0].gameObject);
        Open();
    }

    public void RemoveChoices()
    {
        foreach (ChoiceButton choice in buttonList)
        {
            Destroy(choice.gameObject);
        }
        Close();
    }
}
