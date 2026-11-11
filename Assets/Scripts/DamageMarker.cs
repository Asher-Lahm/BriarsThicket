using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Unity.VisualScripting;

public class DamageMarker : HealthUI
{
    [SerializeField] TextMeshProUGUI damageText;
    WorldUIFollower follower;
    Animator animator;
    int prevHealth;

    protected void Awake()
    {
        follower = GetComponent<WorldUIFollower>();
        animator = GetComponent<Animator>();
    }

    public override void Initialize(Combatant combatant)
    {
        prevHealth = combatant.maxHealth;
        base.Initialize(combatant);
    }

    protected override void SetUpVisuals(Combatant combatant)
    {
        follower.SetTarget(combatant.healthUITransform);
    }

    override protected void UpdateHealthUI(int current, int max, int tempBlock, DamageType type = DamageType.None)
    {
        int damageDone = Mathf.Abs(prevHealth - current);
        prevHealth = current;
        damageText.text = $"{damageDone}";
        switch (type) 
        {
            case DamageType.Attack:
                animator.SetTrigger("Hurt");
                print("hurt ui anim");
                break;
            case DamageType.Heal:
                animator.SetTrigger("Heal");
                print("heal ui anim");
                break;
            case DamageType.Block:
                animator.SetTrigger("Block");
                print("heal ui anim");
                break;
        }
    }

    override protected void UpdateStatusUI(List<StatusCondition> statuses)
    {
        print("UpdateStatusUI shouldn't be called on DamageMarker class");
    }

    override public void UpdateStatusPanel(StatusCondition status)
    {
        print("UpdateStatusPanel shouldn't be called on DamageMarker class");
    }
}
