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

    void Start()
    {
        animator = GetComponentInChildren<Animator>();
    }

    public void Initialize(PlantData data)
    {
        plantData = data;
        SetStage(0);
    }

    public void Grow()
    {
        growthStage++;

        SetStage(growthStage);
    }

    private void SetStage(int stageIndex)
    {
        if (currentVisual != null)
        {
            Destroy(currentVisual);
        }

        GrowthStage currentStage = plantData.growthStages[stageIndex];

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
