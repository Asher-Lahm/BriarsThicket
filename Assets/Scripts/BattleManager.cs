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

public class BattleManager : MonoBehaviour
{
    public static bool isInBattle;
    public static BattleManager Instance;
    [SerializeField] BattleUIManager BattleUI;
    //[[SerializeField]] List<Combatant> combatants;

    public void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        } else
        {
            Destroy(this.gameObject);
        }
    }

    public void StartBattle(PlantBed bed)
    {
        //Todo
        Debug.Log("Started Battle (Theoretically)");
    }

    void TryAttack()
    {

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
