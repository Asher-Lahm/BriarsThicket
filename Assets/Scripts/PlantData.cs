using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "testScriptableObject", menuName = "ScriptableObject/PlantData")]
public class PlantData : ScriptableObject
{
    public string plantName;
    public string description;
    public GrowthStage[] growthStages;
}
