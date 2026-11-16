using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class SummonConfirmationMenu : MonoBehaviour
{
    [SerializeField] public string headerText;
    [SerializeField] [TextArea] public string descText;
    [SerializeField] string confirmText = "Yes";
    [SerializeField] string declineText = "No";
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
    public ConfirmationMenu Summon()
    {
        if (canvas == null)
        {
            Debug.Log("no canvas to spawn menu");
            return null;
        }
            
        GameObject menuObject = Instantiate(menu, canvas.transform);
        ConfirmationMenu instancedMenu = menuObject.GetComponent<ConfirmationMenu>();
        instancedMenu.Intialize(headerText, descText, onConfirm, onCancel, confirmText, declineText);
        instancedMenu.Open();
        return instancedMenu;
    }

    public void SummonNoReturn()
    {
        Summon();
    }

}
