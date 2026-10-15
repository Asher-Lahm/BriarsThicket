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

    [SerializeField] private Material daySkybox;
    [SerializeField] private Material nightSkybox;
    [SerializeField] private Color dayColor;
    [SerializeField] private Color nightColor;

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
        ChangeSkybox(nightSkybox);
        worldLight.color = nightColor;
        DynamicGI.UpdateEnvironment();
    }

    IEnumerator BrightenLight()
    {
        while (worldLight.intensity < 1)
        {
            worldLight.intensity += 0.05f;
            yield return null;
        }
        ChangeSkybox(daySkybox);
        worldLight.color = dayColor;
        DynamicGI.UpdateEnvironment();
    }

    private void ChangeSkybox(Material newSkybox)
    {
        if (newSkybox != null)
        {
            RenderSettings.skybox = newSkybox;
        }
        else
        {
            Debug.LogWarning("Skybox material is missing!");
        }
    }
}
