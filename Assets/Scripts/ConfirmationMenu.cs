using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using TMPro;

public class ConfirmationMenu : Menu
{
    [SerializeField] Button yesButton;
    [SerializeField] Button noButton;
    [SerializeField] TextMeshProUGUI title;
    [SerializeField] TextMeshProUGUI description;

    private UnityAction confirmAction;

    public void Intialize(string headerText, string descText, UnityEvent onConfirm, UnityEvent onCancel)
    {
        title.text = headerText;
        description.text = descText;
        yesButton.onClick.AddListener(onConfirm.Invoke);

    }

    private void Confirm()
    {
        confirmAction?.Invoke();
        Close();
    }

    private void Cancel()
    {
        Close();
    }
}
