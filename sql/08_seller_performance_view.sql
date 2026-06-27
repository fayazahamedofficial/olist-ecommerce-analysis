CREATE OR REPLACE VIEW `prime-hour-500203-q4.olist_cleaned.seller_performance_view` AS
SELECT
    i.seller_id,
    COUNT(*) AS total_orders,
    ROUND(SUM(IF(m.is_late = 'Yes', 1, 0)) / COUNT(*) * 100, 2) AS late_rate,
    ROUND(SUM(m.price + m.freight_value), 2) AS revenue,
    DATE(o.order_purchase_timestamp) AS order_date
FROM `prime-hour-500203-q4.olist_cleaned.master_orders` m
LEFT JOIN `prime-hour-500203-q4.olist_raw.olist_order_items_dataset` i
    ON m.order_id = i.order_id
LEFT JOIN `prime-hour-500203-q4.olist_cleaned.orders_cleaned` o
    ON m.order_id = o.order_id
GROUP BY i.seller_id, order_date
HAVING COUNT(*) >= 10