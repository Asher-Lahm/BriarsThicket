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

    private Animator animator;

    private GameObject currentVisual;
    private DayNightManager dayNightManager;

    void Start()
    {
        animator = GetComponentInChildren<Animator>();
    }

    public void Initialize(PlantData data, DayNightManager dnManager)
    {
        dayNightManager = dnManager;
        dayNightManager.OnBecomeDay += HandleBecomeDay;
        dayNightManager.OnBecomeNight += HandleBecomeNight;

        plantData = data;
        SetStage(0);
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
        attacks = currentStage.attacks;
        defense = currentStage.baseDefense;
        

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
