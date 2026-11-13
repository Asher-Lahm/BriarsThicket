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
    [SerializeField] Transform energyContainer;
    [SerializeField] GameObject energyPrefab;

    public void Initialize(Combatant inCombatant, RecipientSelectMenu selector, int energyCost)
    {
        selectorMenu = selector;
        if (inCombatant == null)
        {
            return;
        }
        combatant = inCombatant;
        textObject.text = combatant.combatName;
        foreach (Transform child in energyContainer)
        {
            Destroy(child.gameObject);
        }
        for (int i = 0; i < energyCost; i++)
        {
            Instantiate(energyPrefab, energyContainer);
        }
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
