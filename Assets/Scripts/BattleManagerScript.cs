using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum BattleState
{
    Start,
    PlayerTurn,
    EnemyTurn,
    Victory,
    Defeat
}

public class BattleManagerScript : MonoBehaviour
{
    public static bool isInBattle;
    //[[SerializeField]] List<Combatant> combatants;
    
    void startBattle(List<Combatant> combatants)
    {

    }

    void TryAttack()
    {

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
