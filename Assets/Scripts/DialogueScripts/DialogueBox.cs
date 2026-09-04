using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.TextCore.Text;
using TMPro;
using UnityEngine.UI;

public class DialogueBox : Menu
{
    public Image dialogueBoxImage;
    public TextMeshProUGUI textObject;
    public DialogueChoiceMenu choiceContainer;
    public Image characterPortrait;

    public void SetText(string text)
    {
        textObject.text = text;
    }

    public void SetImage(Sprite sprite)
    {
        dialogueBoxImage.sprite = sprite;
    }
    
    public void SetCharacterSprite(Sprite sprite)
    {
        characterPortrait.sprite = sprite;
    }
}
