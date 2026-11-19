using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class OptionsMenu : Menu, ISwitchableMenu
{
    [SerializeField] Slider masterSlider;
    [SerializeField] Slider sfxSlider;
    [SerializeField] Slider musicSlider;
    private float masterSliderValue;
    private float sfxSliderValue;
    private float musicSliderValue;
    public override void Initialize()
    {
    }

    public void UpdateVisuals()
    {

    }
}
