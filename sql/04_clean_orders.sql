CREATE TABLE `prime-hour-500203-q4.olist_cleaned.orders_cleaned` AS
SELECT 
  order_id, 
  customer_id,
  order_status,
  order_purchase_timestamp,
  order_delivered_customer_date,
  order_estimated_delivery_date,
  DATE_DIFF(order_delivered_customer_date,order_estimated_delivery_date,DAY) AS days_late,
  CASE WHEN DATE_DIFF(order_delivered_customer_date,order_estimated_delivery_date,DAY) > 0 
       THEN 'Yes' ELSE 'No' 
  END AS is_late
FROM `prime-hour-500203-q4.olist_raw.olist_orders_dataset`
WHERE order_status = 'delivered' 
AND order_delivered_customer_date IS NOT NULL