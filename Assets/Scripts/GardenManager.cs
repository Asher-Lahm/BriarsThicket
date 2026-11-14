using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GardenManager : MonoBehaviour
{
    [SerializeField] DayNightManager dayNightManager;
    [SerializeField] GameObject defaultPlantPrefab;
    [SerializeField] public DialogueStart planting;
    [SerializeField] public DialogueStart recap;
    [SerializeField] public DialogueStart harvest;
    [SerializeField] public DialogueStart firstGrowth;
    [SerializeField] public DialogueStart firstInteract;
    [SerializeField] public DialogueStart firstInteractNoSeed;
    [SerializeField] public DialogueStart beforeFight;
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
            bed.Initialize(dayNightManager, this, defaultPlantPrefab);
        }
    }
}
