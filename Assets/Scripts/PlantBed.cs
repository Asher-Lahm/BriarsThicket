using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantBed : MonoBehaviour
{
    public PlantSpot[] plantSpots;

    public void Plant(PlantData data, PlantSpot spot)
    {
        GameObject plantObject = Instantiate(data.growthStages[0].prefab, spot.transform);
        Plant plant = plantObject.GetComponent<Plant>();
        plant.Initialize(this);
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
