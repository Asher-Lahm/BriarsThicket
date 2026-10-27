using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

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
    [SerializeField] public BriarBattle briarBattle;
    private bool plantsHaveTurn = true;
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
        battleUI.OpenBattleMenu();
        StartNewTurn();
    }

    public void EndBattle()
    {
        battleUI.DestroyHealthBars();
    }

    public void StartNewTurn()
    {
        foreach(PlantSpot spot in currentBed.plantSpots)
        {
            if (spot.plant != null)
                spot.plant.NewTurn();
        }
        plantsHaveTurn = true;
        briarBattle.ResetEnergy();
        ReturnBriarControl();
    }

    public void ReturnBriarControl()
    {
        battleUI.StartTurnUI();
    }
    public void BriarQueueAttack(BriarAttackData briarAttack, Combatant reciever)
    {
        if (briarBattle.UseEnergy(briarAttack.energyCost))
        {
            Attack attack;
            if (reciever = briarBattle)
            {
                attack = briarAttack.attackOnBriar;
            } else
            {
                attack = briarAttack.attackOnPlant;
            }
            attackQueue.Enqueue(new AttackQueueItem(attack, briarBattle, reciever));
            StartCoroutine(ProcessAttackQueue());
        }
    }

    public void QueuePlantAttacks()
    {
        foreach (PlantSpot plantSpot in currentBed.plantSpots)
        {
            if (plantSpot.plant != null)
            {
                Plant plant = plantSpot.plant;
                Attack attack = plant.ChooseAttack();
                Combatant target;
                if (attack != null)
                {
                    if (attack.plantTarget)
                    {
                        target = plant;
                    }
                    else
                    {
                        target = briarBattle;
                    }
                    QueueAttack(attack, plant, target);
                    print($"{attack.name}");
                }
            }
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

            yield return new WaitForSeconds(1f);
        }
        if (briarBattle.energy > 0)
        {
            ReturnBriarControl();
        }
        else if (plantsHaveTurn == true)
        {
            plantsHaveTurn = false;
            QueuePlantAttacks();
        }
        else
        {
            StartNewTurn();
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
            if (Random.value > attacker.notStuckChance)
            {
                //fail
                yield return new WaitForSeconds(0.5f);
            }
            //attacker.playAnimation
            Combatant newReciever = reciever;
            if (action.affectSelf)
            {
                newReciever = attacker;
            }
            if (action.attackPositions.Length == 1)
            {
                ApplyAP(attacker, newReciever, action, action.attackPositions[0]);
            }
            else
            {
                if (action.amountOfPlantsToAffect == 0)
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
                            ApplyAP(attacker, extraReciever, action, ap);
                        }
                    }
                }
                else
                {
                    Vector3Int[] attackRandom = action.attackPositions.OrderBy(x => Random.value).ToArray();
                    int i = 0;
                    foreach (Vector3Int ap in attackRandom)
                    {
                        Combatant extraReciever = null;
                        if (reciever is Plant plant)
                        {
                            extraReciever = currentBed.GetAdjacent(plant, ap.y, ap.z);
                        }
                        if (extraReciever != null)
                        {
                            ApplyAP(attacker, extraReciever, action, ap);
                            i++;
                            if (i >= action.amountOfPlantsToAffect)
                            {
                                break;
                            }
                        }
                    }
                }
            }
        }
        yield return new WaitForSeconds(0.5f);
    }

    private static void ApplyAP(Combatant attacker, Combatant reciever, AttackAction action, Vector3Int ap)
    {
        print($"{action.name}, {attacker.combatName}, {reciever.combatName}");
        switch (action.damageType)
        {
            case DamageType.Heal:
                reciever.Heal(ap.x);
                break;
            case DamageType.Attack:
                reciever.TakeDamage(ap.x, attacker);
                break;
            case DamageType.Block:
                reciever.AddBlock(ap.x);
                break;

        }
        foreach (StatusData status in action.status)
        {
            reciever.AddStatus(new StatusCondition(status, action.turns, action.infiniteStatus));
        }
    }
}
