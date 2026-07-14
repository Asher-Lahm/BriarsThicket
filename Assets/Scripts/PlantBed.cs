using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantBed : MonoBehaviour
{
    [SerializeField] int cols;
    [SerializeField] int rows;

    private Plant[,] grid;
    private float spacing = 1f;

    private void Awake()
    {
        grid = new Plant[rows, cols];
    }

    public Vector3 GetCellWorldPosition(int row, int col)
    {
        Vector3 origin = transform.position;
        return origin + new Vector3(col * spacing, 0, row * spacing);
    }

    public bool Plant(int row, int col, Plant plantPrefab)
    {
        if (grid[row, col] != null)
            return false; // already occupied

        Vector3 pos = GetCellWorldPosition(row, col);

        Plant newPlant = Instantiate(plantPrefab, pos, Quaternion.identity, transform);

        grid[row, col] = newPlant;

        return true;
    }

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
