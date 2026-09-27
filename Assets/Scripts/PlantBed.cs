using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantBed : MonoBehaviour
{
    public PlantSpot[] plantSpots;
    public Transform plantingCameraTransform;
    public Transform battleCameraTransform;

    public void Initialize(DayNightManager dayNightManager, GameObject prefab)
    {
        foreach (PlantSpot spot in plantSpots)
        {
            spot.Initialize(dayNightManager, prefab);
        }

        GetComponent<PlantBedInteractable>().dayNightManager = dayNightManager;
    }

    public Combatant GetAdjacent(Plant target, Vector2Int pos)
    {
        PlantSpot mainSpot = target.GetComponentInParent<PlantSpot>();
        foreach (PlantSpot spot in plantSpots)
        {
            if (spot.position.x == mainSpot.position.x + pos.x && spot.position.y == mainSpot.position.y + pos.y)
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
