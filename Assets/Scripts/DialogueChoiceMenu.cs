using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

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

    public void SetNavigation()
    {
        for (int i = 0; i < buttonList.Count; i++)
        {
            Debug.Log($"button {i} nav");
            ChoiceButton button = buttonList[i];
            Navigation buttonNav = button.button.navigation;
            if (i - 1 >= 0)
            {
                buttonNav.selectOnUp = buttonList[i - 1].button;
            }
            if (i + 1 < buttonList.Count)
            {
                buttonNav.selectOnDown = buttonList[i + 1].button;
            }
            button.button.navigation = buttonNav;
        }
    }

    public void RemoveChoices()
    {
        foreach (ChoiceButton choice in buttonList)
        {
            Destroy(choice.gameObject);
        }
        buttonList = new List<ChoiceButton>();
        Close();
    }
}
