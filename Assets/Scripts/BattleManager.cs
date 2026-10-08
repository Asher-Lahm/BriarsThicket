using System;
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
    private PlantBed currentBed;
    private PlayerInputReader playerInput;
    [SerializeField] CameraController camControl;
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

    public void StartBattle(BriarBattle briar, PlantBed bed)
    {
        Debug.Log("Started Battle (Theoretically)");
        camControl.MoveToFixedPosition(bed.plantingCameraTransform);
        currentBed = bed;
        isInBattle = true;
        battleUI.SetPlantHealthBars(currentBed);
        battleUI.SetBriarHealthBar(briar);
        playerInput.StartUI();
    }

    public void EndBattle()
    {
        battleUI.DestroyHealthBars();
    }

    void QueueAttack(Attack attack, Combatant attacker, Combatant reciever)
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

        // Queue is empty.
        // The turn is finished.
    }


    private void SubmitTurn()
    {
        StartCoroutine(ProcessTurn());
    }

    //Some kind of submit button will activate this.
    private IEnumerator ProcessTurn()
    {
        // Player has already selected their attacks.

        yield return StartCoroutine(ProcessAttackQueue());

        // Now the plants choose their attacks.
        //QueuePlantAttacks();

        yield return StartCoroutine(ProcessAttackQueue());

        // Turn is over.
        //BeginNextTurn();
    }

    IEnumerator PerformAttack(AttackQueueItem currentAttack)
    {
        Attack attack = currentAttack.attack;
        Combatant attacker = currentAttack.attacker;
        Combatant reciever = currentAttack.reciever;

        

        foreach(AttackAction action in attack.actions)
        {
            //attacker.playAnimation
            foreach(Vector3Int ap in action.attackPositions)
            {
                if (!attack.briarAttack)
                {
                    reciever.TakeDamage(ap.x);
                } else
                {
                    Combatant extraReciever = null;
                    if (reciever is Plant)
                    {
                        extraReciever = currentBed.GetAdjacent((Plant)reciever, ap.y, ap.z);
                    }
                    if (extraReciever != null)
                    {
                        extraReciever.TakeDamage(ap.x);
                    }
                }
            }
        }



        yield return new WaitForSeconds(0.5f);
    }
}
