SELECT 
  s.seller_id,
  COUNT(*) AS total_orders,
  COUNTIF(is_late='Yes') AS late_orders,
  ROUND(COUNTIF(is_late='Yes')/COUNT(*)*100,2) AS late_delivery_rate
FROM 
  prime-hour-500203-q4.olist_cleaned.master_orders m 
LEFT JOIN 
  `prime-hour-500203-q4.olist_raw.olist_order_items_dataset` i
ON 
  m.order_id = i.order_id 
LEFT JOIN 
  prime-hour-500203-q4.olist_raw.olist_sellers_dataset s
ON
  i.seller_id = s.seller_id
GROUP BY seller_id 
HAVING total_orders >= 50
ORDER BY late_delivery_rate DESC;
