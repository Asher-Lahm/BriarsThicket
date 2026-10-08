using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackQueueItem
{
    public Attack attack;
    public Combatant attacker;
    public Combatant reciever;

    public AttackQueueItem(Attack attack, Combatant attacker, Combatant reciever)
    {
        this.attack = attack;
        this.attacker = attacker;
        this.reciever = reciever;
    }
}
