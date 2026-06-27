CREATE OR REPLACE VIEW `prime-hour-500203-q4.olist_cleaned.weight_analysis_view` AS
SELECT
    CASE
        WHEN m.is_late = 'Yes' THEN 'Late'
        ELSE 'On Time'
    END AS delivery_type,
    ROUND(AVG(p.product_weight_g), 2) AS avg_weight,
    DATE(o.order_purchase_timestamp) AS order_date
FROM `prime-hour-500203-q4.olist_cleaned.master_orders` m
LEFT JOIN `prime-hour-500203-q4.olist_raw.olist_products_dataset` p
    ON m.product_id = p.product_id
LEFT JOIN `prime-hour-500203-q4.olist_cleaned.orders_cleaned` o
    ON m.order_id = o.order_id
GROUP BY delivery_type, order_date