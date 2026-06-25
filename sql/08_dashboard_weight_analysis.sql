CREATE TABLE `prime-hour-500203-q4.olist_cleaned.weight_analysis` AS
SELECT
    CASE
        WHEN is_late = 'Yes' THEN 'Late'
        ELSE 'On Time'
    END AS delivery_type,
    ROUND(AVG(p.product_weight_g), 2) AS avg_weight
FROM `prime-hour-500203-q4.olist_cleaned.master_orders` m
LEFT JOIN `prime-hour-500203-q4.olist_raw.olist_products_dataset` p
    ON m.product_id = p.product_id
GROUP BY delivery_type