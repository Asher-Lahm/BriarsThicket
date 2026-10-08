using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantBedInteractable : Interactable
{
    [SerializeField] BattleStartMenu battleMenu;
    [SerializeField] PlantingMenu plantingMenu;
    [HideInInspector] public DayNightManager dayNightManager;
    private PlantBed bed;
    private int dayLastFought;
    private bool fought;

    private void Start()
    {
        bed = GetComponent<PlantBed>();
    }

    public override void Interact()
    {
        if (dayNightManager.isDay)
        {
            plantingMenu.Open();
            plantingMenu.PrepareMenus(bed);
        } else
        {
            battleMenu.Open();
            battleMenu.Target(bed);
        }  
    }
}
