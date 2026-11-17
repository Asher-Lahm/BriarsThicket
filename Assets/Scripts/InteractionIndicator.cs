using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class InteractionIndicator : MonoBehaviour
{

    WorldUIFollower worldFollower;
    [SerializeField] TextMeshProUGUI buttonLetterText;
    [SerializeField] TextMeshProUGUI promptText;
    Sprite texture;
    [SerializeField] Image image;
    [SerializeField] Color textColorButton = new (0, 0, 0, 1);
    [SerializeField] Color textColorPrompt = new (1, 1, 1, 1);


    private void Awake()
    {
        worldFollower = GetComponent<WorldUIFollower>();
    }

    public void Initialize(Transform followTarget, string prompt, string letter)
    {
        worldFollower.SetTarget(followTarget);
        UpdateVisuals(prompt, letter);
    }

    public void UpdateVisuals(string prompt, string letter)
    {
        promptText.text = prompt;
        buttonLetterText.text = letter;
        buttonLetterText.color = textColorButton;
        promptText.color = textColorPrompt;
        if (texture != null)
            image.sprite = texture;
    }
}
