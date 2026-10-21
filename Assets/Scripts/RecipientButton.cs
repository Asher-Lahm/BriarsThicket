using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEditor.Search;
using UnityEngine;
using UnityEngine.EventSystems;

public class RecipientButton : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI textObject;
    public Combatant combatant;
    RecipientSelectMenu selectorMenu;
    public void Initialize(Combatant inCombatant, RecipientSelectMenu selector)
    {
        selectorMenu = selector;
        if (inCombatant == null)
        {
            textObject.text = "";
            return;
        }
        combatant = inCombatant;
        textObject.text = combatant.combatName;
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        HighlightItem();
    }

    public void OnSelect(BaseEventData eventData)
    {
        HighlightItem();
    }

    public void OnPointerExit(PointerEventData eventData)
    {

    }

    protected void HighlightItem()
    {
        selectorMenu.UpdateSelectedRecipient(this);
    }
}
