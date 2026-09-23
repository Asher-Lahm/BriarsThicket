using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantingMenu : Menu
{
    [SerializeField] GardenManager gardenManager;
    PlantBed bed;
    [SerializeField] GameObject indivPlantMenu;
    List<IndivPlantMenu> indivPlantMenus = new List<IndivPlantMenu>();
    [SerializeField] CameraController camControl;

    private void Start()
    {
        if (gardenManager == null || !gardenManager.isActiveAndEnabled)
        {
            gardenManager = GardenManager.Instance;
        }
    }
    public void PrepareMenus(PlantBed bed)
    {
        this.bed = bed;
        foreach (PlantSpot spot in bed.plantSpots)
        {
            GameObject menuObject = Instantiate(indivPlantMenu, transform);

            IndivPlantMenu menu = menuObject.GetComponent<IndivPlantMenu>();
            
            menu.Initialize(spot);
            indivPlantMenus.Add(menu);
        }
        camControl.MoveToFixedPosition(bed.plantingCameraTransform);
    }

    public void CloseMenus()
    {
        camControl.ReturnPlayerControl();
        Close();
    }
}
