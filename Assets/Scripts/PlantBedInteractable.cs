using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantBedInteractable : Interactable
{
    [SerializeField] BattleStartMenu battleMenu;
    [SerializeField] PlantingMenu plantingMenu;
    private DayNightManager dnManager;
    private PlantBed bed;
    private bool planted = false;
    private bool plantable = true;
    private List<SeedItem> previouslyPlanted = new List<SeedItem>();
    private bool harvestable = false;
    private bool fightable = false;
    private bool fought = false;
    private int plantAge = 0;
    private GardenManager gm;
    private SummonConfirmationMenu plantSeeds;
    private SummonConfirmationMenu removePlants;
    private Dictionary<string, string> dialogueDictionary = new Dictionary<string, string>();

    protected override void Awake()
    {
        base.Awake();
        bed = GetComponent<PlantBed>();
        SummonConfirmationMenu[] menuSummoner = GetComponents<SummonConfirmationMenu>();
        plantSeeds = menuSummoner[0];
        plantSeeds.onCancel.AddListener(indSummoner.Summon);
        removePlants = menuSummoner[1];
        removePlants.onCancel.AddListener(indSummoner.Summon);
    }

    public void Initialize(DayNightManager dayNightManager, GardenManager gardenManager)
    {
        dnManager = dayNightManager;
        dnManager.OnBecomeDay += BecomeDay;
        dnManager.OnBecomeNight += BecomeNight;
        gm = gardenManager;
    }

    private void BecomeDay()
    {
        if (fightable && !fought)
        {
            //penalize harvest
        }
    }

    private void BecomeNight()
    {
        fightable = false;

        if (bed.IsEmpty())
        {
            plantable = true;
            plantAge = 0;
        } else
        {
            CreatePlantString();
            plantable = false;
            planted = true;
            plantAge++;
            if (plantAge >= 2)
            {
                fightable = true;
                harvestable = true;
            }
        }
    }

    private void CreatePlantString()
    {
        int plantAmount = bed.GetPlantAmount();
        int plantsLeft = plantAmount;
        List<string> plantedPlants = new List<string>();
        string plantListString = "";
        string article;
        foreach(PlantSpot spot in bed.plantSpots)
        {
            if (spot.plant != null)
            {
                if (!plantedPlants.Contains(spot.plant.combatName)) {
                    if ("aeiouAEIOU".Contains(spot.plant.combatName[0]))
                    {
                        article = "an";
                    }
                    else
                    {
                        article = "a";
                    }
                    plantedPlants.Add(spot.plant.combatName);
                }
                else
                {
                    article = "another";
                }
                if (plantsLeft > 1)
                {
                    plantListString += $"{article} {spot.plant.combatName}, ";
                }
                else
                {
                    if (plantAmount == 1)
                    {
                        plantListString += $"{article} {spot.plant.combatName}";
                    }
                    else
                    {
                        plantListString += $"and {article} {spot.plant.combatName}";
                    }
                }
                plantsLeft--;
            }
        }
        dialogueDictionary["{PLANTLIST}"] = plantListString;
    }

    public override void SummonInteractIndicator(InteractionContext ic)
    {
        if (!ic.Progress.firstBedInteracted)
        {
            indSummoner.ChangeInteractPrompt("Inspect");
        }
        else if (dnManager.isDay)
        {
            if (plantable)
            {
                indSummoner.ChangeInteractPrompt("Plant");
            }
            else
            {
                indSummoner.ChangeInteractPrompt("Inspect");
            }
        }
        else
        {
            if (fightable)
            {
                if (!ic.Progress.firstFight)
                {
                    indSummoner.ChangeInteractPrompt("Inspect");
                }
                else
                {
                    indSummoner.ChangeInteractPrompt("Fight");
                }
            }
            else
            {
                indSummoner.ChangeInteractPrompt("Inspect");
            }
        }
        
        base.SummonInteractIndicator(ic);
    }

    public override void Interact(InteractionContext ic)
    {
        indSummoner.Delete();
        if (!isInteractable)
            return;
        if (!ic.Progress.firstBedInteracted)
        {
            if (ic.Progress.seedPurchased)
            {
                DialogueManager.Instance.StartDialogue(gm.firstInteract, () => plantSeeds.Summon());
                ic.Progress.firstBedInteracted = true;
            }
            else
            {
                DialogueManager.Instance.StartDialogue(gm.firstInteractNoSeed, indSummoner.Summon);
                ic.Progress.firstBedInteracted = false;
            }
        }
        else if (dnManager.isDay)
        {
            if (plantable)
            {
                plantSeeds.Summon();
            }
            else
            {
                if (ic.Progress.firstFullBedInteracted)
                {
                    DialogueManager.Instance.StartDialogue(gm.recap, dialogueDictionary, () => removePlants.Summon());
                    ic.Progress.firstFullBedInteracted = true;
                } 
                else
                {
                    DialogueManager.Instance.StartDialogue(gm.recap, dialogueDictionary, () => removePlants.Summon());
                }
            }
        } else
        {
            if (fightable)
            {
                if (!ic.Progress.firstFight)
                {
                    DialogueManager.Instance.StartDialogue(gm.beforeFight, OpenBattleMenu);
                    ic.Progress.firstFight = true;
                }
                else
                {
                    OpenBattleMenu();
                }
            }
            else
            {
                if (!ic.Progress.firstGrowth)
                {
                    DialogueManager.Instance.StartDialogue(gm.firstGrowth, dialogueDictionary, () => removePlants.Summon());
                    ic.Progress.firstGrowth = true;
                }
                else
                {
                    DialogueManager.Instance.StartDialogue(gm.recap, dialogueDictionary, () => removePlants.Summon());
                }
            }
        }  
    }

    public void OpenBattleMenu()
    {
        battleMenu.Open();
        battleMenu.Target(bed);
    }

    public void OpenPlantingMenu()
    {
        plantingMenu.Open();
        plantingMenu.PrepareMenus(bed, plantable, harvestable);
    }
}
