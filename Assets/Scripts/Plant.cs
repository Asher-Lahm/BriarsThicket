using System.Collections;
using System.Collections.Generic;
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

    private Material dayMaterial;
    private Material nightMaterial;

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
        ChangeMaterial(dayMaterial);
    }

    private void HandleBecomeNight()
    {
        Grow();
        ChangeMaterial(nightMaterial);
    }

    private void ChangeMaterial(Material mat)
    {
        Renderer[] renderers = GetComponentsInChildren<Renderer>(true);

        foreach (Renderer r in renderers)
        {
            // Replace every material slot
            Material[] materials = r.sharedMaterials;

            for (int i = 0; i < materials.Length; i++)
            {
                materials[i] = mat;
            }

            r.sharedMaterials = materials;
        }
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
        nightMaterial = currentStage.nightMaterial;
        dayMaterial = currentStage.dayMaterial;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
