using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IndivPlantMenu : MonoBehaviour
{
    PlantSpot spot;
    WorldUIFollower follower;

    public void Awake()
    {
        follower = GetComponent<WorldUIFollower>();
    }

    public void Initialize(PlantSpot spot)
    {
        this.spot = spot;
        follower.SetTarget(spot.transform);
    }
}
