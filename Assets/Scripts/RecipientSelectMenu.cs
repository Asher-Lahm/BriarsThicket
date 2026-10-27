using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RecipientSelectMenu : Menu
{

    private Action<BriarAttackData, Combatant> onRecipientSelected;
    [SerializeField] BattleManager bm;
    PlantBed currentBed;
    [SerializeField] GameObject recipientPrefab;
    [SerializeField] Transform recipientTransform;
    GridLayoutGroup recipGrid;
    RectTransform recipRectTransform;
    List<RecipientButton> buttons = new List<RecipientButton>();
    BriarAttackData attackData;
    [SerializeField] Button briarButton;
    public Action<RecipientButton> RecipientUpdated;
    RecipientButton selectedRecipient;
    [SerializeField] protected Button clickBlock;

    public void UpdateSelectedRecipient(RecipientButton newSelect)
    {
        selectedRecipient = newSelect;
        RecipientUpdated?.Invoke(selectedRecipient);
    }

    public void Initialize(BriarAttackData attack, PlantBed inBed, BriarBattle inBriar, Action<BriarAttackData, Combatant> callback)
    {
        attackData = attack;
        Button cancelButton = this.initialSelection.GetComponent<Button>();
        RecipientButton cancelRButton = this.initialSelection.GetComponent<RecipientButton>();
        buttons.Add(cancelRButton);
        cancelButton.onClick.AddListener(() => SelectRecipient(null, null));
        cancelRButton.Initialize(null, this);

        RecipientButton rBriarButton = briarButton.GetComponent<RecipientButton>();
        buttons.Add(rBriarButton);
        briarButton.onClick.AddListener(() => SelectRecipient(attack, inBriar));
        rBriarButton.Initialize(inBriar, this);
        if (attack.attackOnBriar == null)
        {
            briarButton.gameObject.SetActive(false);
        } else
        {
            briarButton.gameObject.SetActive(true);
        }


        if (clickBlock != null)
            clickBlock.onClick.AddListener(() => SelectRecipient(null, null));
        recipGrid = recipientTransform.GetComponent<GridLayoutGroup>();
        recipRectTransform = recipientTransform.GetComponent<RectTransform>();
        currentBed = inBed;
        attackData = attack;
        buttons.Clear();

        onRecipientSelected = callback;

        recipGrid.constraintCount = currentBed.columns;
        float cellSize = recipRectTransform.rect.height / currentBed.rows - recipGrid.spacing.y;
        recipGrid.cellSize = new Vector2(cellSize, cellSize);

        for (int i = 0; i < currentBed.columns; i++)
        {
            for (int j = 0; j < currentBed.rows; j++)
            {
                if (currentBed.plantSpotsGrid[i, j] != null)
                {
                    PlantSpot spot = currentBed.plantSpotsGrid[i, j];
                    if (spot.plant != null)
                    {
                        GameObject buttonObject = Instantiate(recipientPrefab, recipientTransform);

                        RecipientButton rButton = buttonObject.GetComponent<RecipientButton>();
                        rButton.Initialize(spot.plant, this);
                        Button button = buttonObject.GetComponent<Button>();

                        button.onClick.AddListener(() => SelectRecipient(attack, spot.plant));
                        buttons.Add(rButton);
                    }  
                    else
                    {
                        DrawNullButton();
                    }
                } 
                else
                {
                    DrawNullButton();
                }
            }
        }
        base.Open();
    }

    public void DisableButtons(int energy)
    {
        foreach (RecipientButton rButton in buttons)
        {
            Button button = rButton.GetComponent<Button>();
            if (attackData.plantEnergyCost > energy && rButton.combatant is Plant)
            {
                button.interactable = false;
            }
            if (attackData.briarEnergyCost > energy && rButton.combatant is BriarBattle)
            {
                button.interactable = false;
            }
        }
    }

    private void DrawNullButton()
    {
        GameObject buttonObject = Instantiate(recipientPrefab, recipientTransform);

        RecipientButton rButton = buttonObject.GetComponent<RecipientButton>();
        rButton.Initialize(null, this);
        Button button = buttonObject.GetComponent<Button>();
        button.interactable = false;

        buttons.Add(rButton);
    }

    protected void SelectRecipient(BriarAttackData attack, Combatant selectedTarget)
    {
        Action<BriarAttackData, Combatant> callback = onRecipientSelected;
        onRecipientSelected = null;

        callback?.Invoke(attack, selectedTarget);

        base.Close();
        Destroy(this.gameObject);
    }
}
