using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BattleUIManager : MonoBehaviour
{
    [SerializeField] BattleMenu battleMenu;
    [SerializeField] Transform healthBarContainer;
    [SerializeField] Transform briarHealthParent;
    [SerializeField] GameObject healthBarPrefabPlant;
    [SerializeField] GameObject healthBarPrefabBriar;
    [SerializeField] GameObject blankHealthPrefab;
    List<GameObject> plantHealthMenus = new List<GameObject>();
    GameObject briarHealthMenu;
    // Start is called before the first frame update
    private void Awake()
    {
        
    }
    public void OpenBattleMenu()
    {
        battleMenu.Open();
        StartTurnUI();
    }

    public void StartTurnUI()
    {
        battleMenu.StartOfTurn();
    }

    public void SetPlantHealthBarsOld(PlantBed bed)
    {
        foreach (PlantSpot spot in bed.plantSpots)
        {
            if (spot.plant != null)
            {
                Plant plant = spot.plant;
                GameObject menuObject = Instantiate(healthBarPrefabPlant, healthBarContainer);

                HealthUI menu = menuObject.GetComponent<HealthUI>();

                menu.Initialize(plant);
                plantHealthMenus.Add(menuObject);
            }
        }
    }

    public void SetPlantHealthBars(PlantBed bed)
    {
        GridLayoutGroup healthBarGrid = healthBarContainer.GetComponent<GridLayoutGroup>();
        RectTransform healthRectTransform = healthBarContainer.GetComponent<RectTransform>();
        DestroyHealthBars();

        healthBarGrid.constraintCount = bed.columns;
        //float cellSize = healthRectTransform.rect.height / bed.rows - healthBarGrid.spacing.y;
        float cellSize = 30;
        healthBarGrid.cellSize = new Vector2(cellSize * 3, cellSize);
        for (int i = 0; i < bed.columns; i++)
        {
            for (int j = 0; j < bed.rows; j++)
            {
                if (bed.plantSpotsGrid[i, j] != null)
                {
                    PlantSpot spot = bed.plantSpotsGrid[i, j];
                    if (spot.plant != null)
                    {
                        GameObject healthUIObject = Instantiate(healthBarPrefabPlant, healthBarContainer);

                        HealthUI menu = healthUIObject.GetComponent<HealthUI>();
                        menu.Initialize(spot.plant);
                        plantHealthMenus.Add(healthUIObject);
                    }
                    else
                    {
                        DrawNull();
                    }
                }
                else
                {
                    DrawNull();
                }
            }
        }
    }

    public void DrawNull()
    {
        GameObject healthUIObject = Instantiate(blankHealthPrefab, healthBarContainer);

        plantHealthMenus.Add(healthUIObject);
    }


    public void SetBriarHealthBar(BriarBattle briar)
    {
        GameObject menuObject = Instantiate(healthBarPrefabBriar, briarHealthParent);

        HealthUI menu = menuObject.GetComponent<HealthUI>();

        menu.Initialize(briar);
        briarHealthMenu = menuObject;
    }

    public void DestroyHealthBars()
    {
        foreach (GameObject menu in plantHealthMenus)
        {
            Destroy(menu.gameObject);
        }

        if (briarHealthMenu != null)
        {
            Destroy(briarHealthMenu);
        }
    }

    public void OnBattleEnd()
    {
        DestroyHealthBars();
        battleMenu.OnBattleEnd();
    }
}
