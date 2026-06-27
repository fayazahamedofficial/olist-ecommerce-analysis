CREATE OR REPLACE VIEW `prime-hour-500203-q4.olist_cleaned.regional_analysis_view` AS
SELECT
    c.customer_state,
    COUNT(*) AS total_orders,
    ROUND(SUM(IF(m.is_late = 'Yes', 1, 0)) / COUNT(*) * 100, 2) AS late_rate,
    DATE(o.order_purchase_timestamp) AS order_date
FROM `prime-hour-500203-q4.olist_cleaned.master_orders` m
LEFT JOIN `prime-hour-500203-q4.olist_raw.olist_customers_dataset` c
    ON m.customer_id = c.customer_id
LEFT JOIN `prime-hour-500203-q4.olist_cleaned.orders_cleaned` o
    ON m.order_id = o.order_id
GROUP BY c.customer_state, order_date