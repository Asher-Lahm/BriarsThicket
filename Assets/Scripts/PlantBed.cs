using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class PlantBed : MonoBehaviour
{
    public PlantSpot[] plantSpots;
    public Transform plantingCameraTransform;
    public Transform battleCameraTransform;
    [HideInInspector] public int columns;
    [HideInInspector] public int rows;
    public PlantSpot[,] plantSpotsGrid;

    private void Awake()
    {
        columns = plantSpots.Max(e => e.position.x) - plantSpots.Min(e => e.position.x) + 1;
        rows = plantSpots.Max(e => e.position.y) - plantSpots.Min(e => e.position.y) + 1;
        plantSpotsGrid = new PlantSpot[columns, rows];
        foreach (PlantSpot spot in plantSpots)
        {
            if (spot.position.x < 0 || spot.position.x > columns || spot.position.y < 0 || spot.position.y > rows)
            {
                throw new ArgumentOutOfRangeException("Plant bed coordinates must start at 0 and cannot be less than 0");
            }
            plantSpotsGrid[spot.position.x, spot.position.y] = spot;
        }
    }

    public void Initialize(DayNightManager dayNightManager, GameObject prefab)
    {
        foreach (PlantSpot spot in plantSpots)
        {
            spot.Initialize(dayNightManager, prefab);
        }

        GetComponent<PlantBedInteractable>().dayNightManager = dayNightManager;
    }

    public Combatant GetAdjacent(Plant target, int x, int y)
    {
        PlantSpot mainSpot = target.GetComponentInParent<PlantSpot>();
        foreach (PlantSpot spot in plantSpots)
        {
            if (spot.position.x == mainSpot.position.x + x && spot.position.y == mainSpot.position.y + y)
            {
                return spot.plant;
            } else
            {
                return null;
            }
        }
        return null;
    }

     
}
