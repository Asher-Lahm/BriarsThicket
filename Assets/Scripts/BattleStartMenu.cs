using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BattleStartMenu : Menu
{
    [SerializeField] BattleManager battleManager;
    [SerializeField] BattleUIManager battleUIManager;
    PlantBed bed;

    private void Start()
    {
        if (battleManager == null || !battleManager.isActiveAndEnabled)
        {
            battleManager = BattleManager.Instance;
        }
    }
    public void Target(PlantBed bed)
    {
        this.bed = bed;
    }

    public void StartBattle()
    {
        battleManager.StartBattle(BriarBattle.Instance, bed);
    }
}
