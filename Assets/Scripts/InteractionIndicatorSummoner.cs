using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionIndicatorSummoner : MonoBehaviour
{
    [SerializeField] private RectTransform targetRectTransform;
    [SerializeField] private Transform indicatorPositionTransform;
    [SerializeField] private InteractionIndicator interactionIndicatorPrefab;
    [SerializeField] private string indicatorPrompt;
    [SerializeField] private string indicatorLetter;
    private InteractionIndicator interactionIndicator;

    private void Awake()
    {

        if (indicatorLetter == null)
        {
            indicatorLetter = "";
            return;
        }
            
        if (indicatorLetter.Length == 1)
        {
            indicatorLetter = char.ToUpper(indicatorLetter[0]).ToString();
        }
    }

    public void Summon()
    {
        if (interactionIndicator != null)
            return;
        if (interactionIndicatorPrefab == null || targetRectTransform == null)
            return;

        interactionIndicator = Instantiate(interactionIndicatorPrefab, targetRectTransform);
        interactionIndicator.Initialize(indicatorPositionTransform, indicatorPrompt, indicatorLetter);
        print("interaction menu summoned");
    }

    public virtual void Clear()
    {
        if (interactionIndicator != null)
        {
            Destroy(interactionIndicator.gameObject);
            interactionIndicator = null;
        }
    }

    public void ChangeInteractPrompt(string input)
    {
        indicatorPrompt = input;
        if (interactionIndicator != null)
            interactionIndicator.UpdateVisuals(input, indicatorLetter);
    }
}
