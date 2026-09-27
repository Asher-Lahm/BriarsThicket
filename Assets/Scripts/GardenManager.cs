using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GardenManager : MonoBehaviour
{
    [SerializeField] DayNightManager dayNightManager;
    [SerializeField] GameObject defaultPlantPrefab;
    public PlantBed[] plantBeds;
    public static GardenManager Instance;
    

    public void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(this.gameObject);
        }
        foreach (PlantBed bed in plantBeds)
        {
            bed.Initialize(dayNightManager, defaultPlantPrefab);
        }
    }
}
