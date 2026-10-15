using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantSpot : MonoBehaviour
{
    public Vector2Int position;
    public Plant plant;
    public GameObject plantPrefab;
    private DayNightManager dayNightManager;
    [SerializeField] Transform healthBarPosition;

    public void Initialize(DayNightManager dnManager, GameObject prefab)
    {
        dayNightManager = dnManager;
        plantPrefab = prefab;
    }
    public void Plant(PlantData plantData)
    {
        GameObject plantObject = Instantiate(plantPrefab, transform);
        plant = plantObject.GetComponent<Plant>();
        plant.Initialize(plantData, dayNightManager, healthBarPosition);
    }

    public void RemovePlant()
    {
        if (plant.gameObject == null)
            return;
        Destroy(plant.gameObject);
        plant = null;
    }
}
