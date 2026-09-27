using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class SummonConfirmationMenu : MonoBehaviour
{
    [SerializeField] public string headerText;
    [SerializeField] [TextArea] public string descText;
    [SerializeField] GameObject menu;
    [SerializeField] public UnityEvent onConfirm;
    [SerializeField] public UnityEvent onCancel;
    [SerializeField] Canvas canvas;

    private void Awake()
    {
        if (canvas == null)
        {
            canvas = GetComponentInParent<Canvas>();
        }
    }
    public void Summon()
    {
        if (canvas == null)
        {
            Debug.Log("no canvas to spawn menu");
            return;
        }
            
        GameObject menuObject = Instantiate(menu, canvas.transform);
        ConfirmationMenu instancedMenu = menuObject.GetComponent<ConfirmationMenu>();
        instancedMenu.Intialize(headerText, descText, onConfirm, onCancel);
        instancedMenu.Open();
    }

}
