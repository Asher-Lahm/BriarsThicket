using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BriarBattle : Combatant
{
    public static BriarBattle Instance;
    [SerializeField] DayNightManager dnManager;
    public int maxEnergy;
    public int energy;

    public bool UseEnergy(int amount)
    {
        if (energy >= amount)
        {
            energy -= amount;
            return true;
        }
        return false;
    }

    public void ResetEnergy()
    {
        energy = maxEnergy + bonusEnergy;
    }

    protected override void Awake()
    {
        base.Awake();
        if (Instance == null)
        {
            Instance = this;
        } else
        {
            Destroy(this);
        }

        dnManager.OnBecomeDay += HandleBecomeDay;
        dnManager.OnBecomeNight += HandleBecomeNight;
    }

    private void OnDestroy()
    {
        dnManager.OnBecomeDay -= HandleBecomeDay;
        dnManager.OnBecomeNight -= HandleBecomeNight;
    }

    public void HandleBecomeDay()
    {
        //switch textures, do day stuff.
    }

    public void HandleBecomeNight()
    {
        //switch textures, do night stuff.
        currentHealth = maxHealth;
    }
}
