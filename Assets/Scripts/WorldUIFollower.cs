using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WorldUIFollower : MonoBehaviour
{
    private Transform worldTarget;
    private RectTransform uiElement;
    private Canvas canvas;

    private RectTransform canvasRect;

    private void Awake()
    {
        uiElement = GetComponent<RectTransform>();
        canvas = GetComponentInParent<Canvas>();
        canvasRect = canvas.GetComponent<RectTransform>();
    }

    public void SetTarget(Transform target)
    {
        this.worldTarget = target;
    }

    private void LateUpdate()
    {
        if (worldTarget == null)
        {
            return;
        }

        Vector3 screenPosition = Camera.main.WorldToScreenPoint(worldTarget.position);

        bool isInFrontOfCamera = screenPosition.z > 0;
        uiElement.gameObject.SetActive(isInFrontOfCamera);

        RectTransformUtility.ScreenPointToLocalPointInRectangle(
            canvasRect,
            screenPosition,
            canvas.worldCamera,
            out Vector2 localPosition
        );

        uiElement.anchoredPosition = localPosition;
    }
}
