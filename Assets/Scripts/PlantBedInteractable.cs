using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantBedInteractable : Interactable
{
    [SerializeField] BattleStartMenu battleMenu;
    [SerializeField] PlantingMenu plantingMenu;
    [SerializeField] DayNightManager dayNightManager;
    private PlantBed bed;

    private void Start()
    {
        bed = GetComponent<PlantBed>();
    }

    public override void Interact()
    {
        battleMenu.Open();
        battleMenu.Target(bed);
    }
}
