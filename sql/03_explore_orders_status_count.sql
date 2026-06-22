SELECT
  order_status,
  COUNT(*) AS total_orders
FROM `prime-hour-500203-q4.olist_raw.olist_orders_dataset`
GROUP BY order_status
ORDER BY total_orders desc;