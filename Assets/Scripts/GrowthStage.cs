using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrowthStage : ScriptableObject
{
    public GameObject prefab;
    public int baseAttack;
    public int baseDefense;
    public Attack[] attacks;
}
