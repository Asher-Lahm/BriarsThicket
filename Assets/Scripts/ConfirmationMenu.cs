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
    [SerializeField] TextMeshProUGUI confirmTextObject;
    [SerializeField] TextMeshProUGUI declineTextObject;

    public void Intialize(string headerText, string descText, UnityEvent onConfirm, UnityEvent onCancel, string confirmText, string declineText)
    {
        title.text = headerText;
        description.text = descText;
        confirmTextObject.text = confirmText;
        declineTextObject.text = declineText;
        yesButton.onClick.AddListener(onConfirm.Invoke);
        noButton.onClick.AddListener(onCancel.Invoke);
    }
}
