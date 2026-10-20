using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BriarBattle : Combatant
{
    public static BriarBattle Instance;
    [SerializeField] DayNightManager dnManager;
    public int maxEnergy;

    private void Awake()
    {
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
