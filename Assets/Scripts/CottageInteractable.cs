using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CottageInteractable : Interactable
{
    [SerializeField] DayNightManager dayNightManager;
    SummonConfirmationMenu menuSummonerDay;
    SummonConfirmationMenu menuSummonerNight;

    protected override void Awake()
    {
        base.Awake();
        SummonConfirmationMenu[] menuSummoner = GetComponents<SummonConfirmationMenu>();
        menuSummonerDay = menuSummoner[0];
        menuSummonerNight = menuSummoner[1];
    }
    public override void Interact(InteractionContext ic)
    {
        indSummoner.Delete();
        if (!isInteractable)
            return;
        if (dayNightManager != null)
        {
            if (dayNightManager.isDay)
            {
                menuSummonerDay.Summon();
            } else {
                menuSummonerNight.Summon();
            }
        }
    }

    public override void SummonInteractIndicator(InteractionContext ic)
    {
        if (ic.DayNight.isDay)
        {
            indSummoner.ChangeInteractPrompt("Inside");
        }
        else
        {
            indSummoner.ChangeInteractPrompt("Sleep");
        }

            base.SummonInteractIndicator(ic);
    }
}
