using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantBedInteractable : Interactable
{
    [SerializeField] BattleStartMenu menuToOpen;
    private PlantBed bed;

    private void Start()
    {
        bed = GetComponent<PlantBed>();
    }

    public override void Interact()
    {
        menuToOpen.Open();
        menuToOpen.Target(bed);
    }
}
