SELECT
    is_late,
    ROUND(AVG(product_weight_g), 2) AS avg_weight_grams
FROM `prime-hour-500203-q4.olist_cleaned.master_orders` m
LEFT JOIN `prime-hour-500203-q4.olist_raw.olist_products_dataset` p
    ON m.product_id = p.product_id
GROUP BY is_late