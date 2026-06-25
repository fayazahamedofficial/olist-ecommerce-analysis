CREATE TABLE `prime-hour-500203-q4.olist_cleaned.seller_performance` AS
SELECT
    i.seller_id,
    COUNT(*) AS total_orders,
    ROUND(SUM(IF(m.is_late = 'Yes', 1, 0)) / COUNT(*) * 100, 2) AS late_rate,
    ROUND(SUM(m.price + m.freight_value), 2) AS revenue
FROM `prime-hour-500203-q4.olist_cleaned.master_orders` m
LEFT JOIN `prime-hour-500203-q4.olist_raw.olist_order_items_dataset` i
    ON m.order_id = i.order_id
GROUP BY i.seller_id
HAVING COUNT(*) >= 50