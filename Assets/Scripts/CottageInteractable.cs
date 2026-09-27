using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CottageInteractable : Interactable
{
    [SerializeField] DayNightManager dayNightManager;
    SummonConfirmationMenu menuSummonerDay;
    SummonConfirmationMenu menuSummonerNight;

    private void Awake()
    {
        SummonConfirmationMenu[] menuSummoner = GetComponents<SummonConfirmationMenu>();
        menuSummonerDay = menuSummoner[0];
        menuSummonerNight = menuSummoner[1];
    }
    public override void Interact()
    {
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
}
