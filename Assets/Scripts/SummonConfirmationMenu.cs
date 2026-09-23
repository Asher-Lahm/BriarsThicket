using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class SummonConfirmationMenu : MonoBehaviour
{
    [SerializeField] string headerText;
    [SerializeField] [TextArea] string descText;
    [SerializeField] GameObject menu;
    [SerializeField] UnityEvent onConfirm;
    [SerializeField] UnityEvent onCancel;
    private Canvas canvas;

    private void Awake()
    {
        canvas = GetComponentInParent<Canvas>();
    }
    public void Summon()
    {
        GameObject menuObject = Instantiate(menu, canvas.transform);
        ConfirmationMenu instancedMenu = menuObject.GetComponent<ConfirmationMenu>();
        instancedMenu.Intialize(headerText, descText, onConfirm, onCancel);
    }

}
