using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Plant/PlantData")]
public class PlantData : ScriptableObject
{
    public string plantName;
    public string description;
    public GrowthStage[] growthStages;
}
