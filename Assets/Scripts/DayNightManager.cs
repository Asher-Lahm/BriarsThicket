using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DayNightManager : MonoBehaviour
{
    public bool isDay = true;
    public int dayCount = 0;
    [SerializeField] Light worldLight;

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
        StartCoroutine(BrightenLight());
    }

    public void EndDay()
    {
        if (isDay)
        {
            isDay = false;
        }
        OnBecomeNight?.Invoke();
        StartCoroutine(DimLight());
    }


    IEnumerator DimLight()
    {
        while (worldLight.intensity > .2)
        {
            worldLight.intensity -= 0.05f;
            yield return null;
        }
    }

    IEnumerator BrightenLight()
    {
        while (worldLight.intensity < 1)
        {
            worldLight.intensity += 0.05f;
            yield return null;
        }
    }
}
