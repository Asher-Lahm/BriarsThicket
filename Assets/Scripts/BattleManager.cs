using JetBrains.Annotations;
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
    [SerializeField] BattleUIManager battleUI;
    private Queue<AttackQueueItem> attackQueue = new Queue<AttackQueueItem>();
    public PlantBed currentBed;
    [SerializeField] PlayerInputReader playerInput;
    [SerializeField] CameraController camControl;
    [SerializeField] BriarBattle briarBattle;
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

    public int GetBriarEnergy()
    {
        return briarBattle.energy;
    }

    public void StartBattle(BriarBattle briar, PlantBed bed)
    {
        Debug.Log("Started Battle (Theoretically)");
        camControl.MoveToFixedPosition(bed.battleCameraTransform);
        currentBed = bed;
        isInBattle = true;
        battleUI.SetPlantHealthBars(currentBed);
        battleUI.SetBriarHealthBar(briar);
        StartTurn();
    }

    public void EndBattle()
    {
        battleUI.DestroyHealthBars();
    }

    public void StartTurn()
    {
        briarBattle.ResetEnergy();
        ReturnBriarControl();
    }

    public void ReturnBriarControl()
    {
        battleUI.StartTurnUI();
    }
    public void BriarQueueAttack(BriarAttackData briarAttack, Combatant reciever)
    {
        print(briarBattle.energy);
        if (briarBattle.UseEnergy(briarAttack.energyCost))
        {
            attackQueue.Enqueue(new AttackQueueItem(briarAttack.attack, briarBattle, reciever));
            StartCoroutine(ProcessAttackQueue());
        }
        print(briarBattle.energy);
    }

    public void QueuePlantAttacks()
    {
        foreach (PlantSpot plantSpot in currentBed.plantSpots)
        {
            Plant plant = plantSpot.plant;
            Attack attack = plant.ChooseAttack();
            Combatant target;
            if (attack.plantTarget)
            {
                target = currentBed.plantSpots[Random.Range(0, currentBed.plantSpots.Length - 1)].plant;
            } else
            {
                target = briarBattle;
            }
            QueueAttack(attack, plant, target);
        }
        StartCoroutine(ProcessAttackQueue());
    }

    private void QueueAttack(Attack attack, Combatant attacker, Combatant reciever)
    {
        attackQueue.Enqueue(new AttackQueueItem(attack, attacker, reciever));
    }

    private IEnumerator ProcessAttackQueue()
    {
        while (attackQueue.Count > 0)
        {
            AttackQueueItem currentAttack = attackQueue.Dequeue();

            if (currentAttack.attacker.isAbleToAttack && currentAttack.reciever.isAttackable)
            {
                yield return StartCoroutine(PerformAttack(currentAttack));
            }
            

            yield return new WaitForSeconds(0.5f);
        }
        if (briarBattle.energy > 0)
        {
            ReturnBriarControl();
        }
        else
        {
            QueuePlantAttacks();
        }
        // Queue is empty.
        // The turn is finished.
    }


    IEnumerator PerformAttack(AttackQueueItem currentAttack)
    {
        Attack attack = currentAttack.attack;
        Combatant attacker = currentAttack.attacker;
        Combatant reciever = currentAttack.reciever;

        

        foreach(AttackAction action in attack.actions)
        {
            //attacker.playAnimation
            if (action.attackPositions.Length == 1)
            {
                reciever.TakeDamage(action.attackPositions[0].x, attacker);
            } else
            {
                foreach (Vector3Int ap in action.attackPositions)
                {
                    Combatant extraReciever = null;
                    if (reciever is Plant plant)
                    {
                        extraReciever = currentBed.GetAdjacent(plant, ap.y, ap.z);
                    }
                    if (extraReciever != null)
                    {
                        extraReciever.TakeDamage(ap.x, attacker);
                    }
                }
            }
        }



        yield return new WaitForSeconds(0.5f);
    }
}
