using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class PlantingMenu : Menu
{
    [SerializeField] GardenManager gardenManager;
    PlantBed bed;
    [SerializeField] GameObject indivPlantMenu;
    List<IndivPlantMenu> indivPlantMenus = new List<IndivPlantMenu>();
    [SerializeField] CameraController camControl;
    [SerializeField] Inventory inventory;

    private void Start()
    {
        if (gardenManager == null || !gardenManager.isActiveAndEnabled)
        {
            gardenManager = GardenManager.Instance;
        }
    }
    public void PrepareMenus(PlantBed bed, bool plantable, bool harvestable)
    {
        indivPlantMenus.Clear();
        this.bed = bed;
        foreach (PlantSpot spot in bed.plantSpots)
        {
            GameObject menuObject = Instantiate(indivPlantMenu, transform);

            IndivPlantMenu menu = menuObject.GetComponent<IndivPlantMenu>();
            
            menu.Initialize(spot, inventory, plantable, harvestable);
            menu.onPlantRemoved += UpdateMenus;
            indivPlantMenus.Add(menu);
        }
        camControl.MoveToFixedPosition(bed.plantingCameraTransform);
    }

    public void UpdateMenus()
    {
        if (bed.IsEmpty())
        {
            foreach (IndivPlantMenu menu in indivPlantMenus)
            {
                menu.BedEmpty();
            }
        }
    }

    public void CloseMenus()
    {
        camControl.ReturnPlayerControl();
        foreach (IndivPlantMenu menu in indivPlantMenus)
        {
            menu.onPlantRemoved -= UpdateMenus;
            Destroy(menu.gameObject);
            print("menu destroyed");
        }
        Close();
    }
}
