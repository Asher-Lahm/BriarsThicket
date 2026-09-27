using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DayNightManager : MonoBehaviour
{
    public bool isDay = true;
    public int dayCount = 0;

    public event Action OnBecomeDay;
    public event Action OnBecomeNight;

    public void EndNight()
    {
        if (!isDay)
        {
            dayCount++;
            isDay = true;
        }
        OnBecomeDay?.Invoke();
    }

    public void EndDay()
    {
        if (isDay)
        {
            isDay = false;
        }
        OnBecomeNight?.Invoke();
    }
}
