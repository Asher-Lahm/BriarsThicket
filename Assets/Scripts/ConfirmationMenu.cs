using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class ConfirmationMenu : Menu
{
    [SerializeField] Button yesButton;
    [SerializeField] Button noButton;
    [SerializeField] TextMeshProUGUI title;
    [SerializeField] TextMeshProUGUI description;

    public void Intialize(string headerText, string descText, UnityEvent onConfirm, UnityEvent onCancel)
    {
        title.text = headerText;
        description.text = descText;
        yesButton.onClick.AddListener(onConfirm.Invoke);
    }
}
