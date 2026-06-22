SELECT 
  COUNT(*) AS total_delivered,
  COUNTIF(order_delivered_customer_date IS NULL) AS missing_delivery_dates,
  COUNTIF(order_estimated_delivery_date IS NULL) AS missing_estimated_date
FROM `prime-hour-500203-q4.olist_raw.olist_orders_dataset`
WHERE 
  order_status = 'delivered';
