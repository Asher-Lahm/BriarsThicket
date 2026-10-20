using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BattleUIManager : MonoBehaviour
{
    [SerializeField] BattleMenu battleMenu;
    [SerializeField] Transform healthBarContainer;
    [SerializeField] GameObject healthBarPrefabPlant;
    [SerializeField] GameObject healthBarPrefabBriar;
    List<HealthUI> plantHealthMenus = new List<HealthUI>();
    HealthUI briarHealthMenu;
    // Start is called before the first frame update
    private void Awake()
    {
        
    }
    public void OpenBattleMenu()
    {
        battleMenu.Open();
    }
    public void SetPlantHealthBars(PlantBed bed)
    {
        foreach (PlantSpot spot in bed.plantSpots)
        {
            if (spot.plant != null)
            {
                Plant plant = spot.plant;
                GameObject menuObject = Instantiate(healthBarPrefabPlant, healthBarContainer);

                HealthUI menu = menuObject.GetComponent<HealthUI>();

                menu.Initialize(plant);
                plantHealthMenus.Add(menu);
            }
        }
    }

    public void SetBriarHealthBar(BriarBattle briar)
    {
        GameObject menuObject = Instantiate(healthBarPrefabBriar, healthBarContainer);

        HealthUI menu = menuObject.GetComponent<HealthUI>();

        menu.Initialize(briar);
        briarHealthMenu = menu;
    }

    public void DestroyHealthBars()
    {
        foreach (HealthUI menu in plantHealthMenus)
        {
            Destroy(menu);
        }

        if (briarHealthMenu != null)
        {
            Destroy(briarHealthMenu);
        }
    }
}
