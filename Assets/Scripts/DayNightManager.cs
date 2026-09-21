using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DayNightManager : MonoBehaviour
{
    public bool isDay = true;
    public int dayCount = 0;

    public void nextDay()
    {
        if (!isDay)
        {
            dayCount++;
            isDay = true;
        }
    }

    public void nextNight()
    {
        if (isDay)
        {
            isDay = false;
        }
    }
}
