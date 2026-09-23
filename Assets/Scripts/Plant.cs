using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Plant : Combatant
{
    [SerializeField]
    private Attack[] attacks;



    private Animator animator;

    private GameObject currentVisual;

    void Start()
    {
        animator = GetComponent<Animator>();
    }

    public void Initialize(PlantBed parentBed)
    {

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
