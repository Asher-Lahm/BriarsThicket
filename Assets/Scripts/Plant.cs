using System.Collections;
using System.Collections.Generic;
using UnityEditor.SceneManagement;
using UnityEngine;

public class Plant : Combatant
{
    [SerializeField]
    private Attack[] attacks;
    private int growthStage = 0;
    private PlantData plantData;

    private PlantBed bed;
    private Animator animator;

    private GameObject currentVisual;
    private DayNightManager dayNightManager;

    void Start()
    {
        animator = GetComponentInChildren<Animator>();
    }

    public void Initialize(PlantData data, DayNightManager dnManager, Transform uiTransform)
    {
        dayNightManager = dnManager;
        dayNightManager.OnBecomeDay += HandleBecomeDay;
        dayNightManager.OnBecomeNight += HandleBecomeNight;

        plantData = data;
        combatName = data.plantName;
        healthUITransform = uiTransform;

        SetStage(0);
    }

    public void OnDestroy()
    {
        dayNightManager.OnBecomeDay -= HandleBecomeDay;
        dayNightManager.OnBecomeNight -= HandleBecomeNight;
    }

    public void Grow()
    {
        growthStage++;

        SetStage(growthStage);
    }

    private void HandleBecomeDay()
    {

    }

    private void HandleBecomeNight()
    {
        Grow();
    }

    private void SetStage(int stageIndex)
    {
        if (currentVisual != null)
        {
            Destroy(currentVisual);
        }

        GrowthStage currentStage = plantData.growthStages[stageIndex];

        print($"{currentStage.name}");
        currentVisual = Instantiate(currentStage.prefab, transform);
        maxHealth = currentStage.baseMaxHealth;
        currentHealth = maxHealth;
        attacks = currentStage.attacks;
        defense = currentStage.baseDefense;
        

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
