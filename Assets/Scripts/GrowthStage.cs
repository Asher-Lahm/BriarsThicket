using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "Plant/GrowthStage")]
public class GrowthStage : ScriptableObject
{
    public GameObject prefab;
    public int baseDefense;
    public int baseMaxHealth;
    public int baseFatigueHealth;
    public Attack[] attacks;
    public bool isFightable = true;
    public Material dayMaterial;
    public Material nightMaterial;
}
