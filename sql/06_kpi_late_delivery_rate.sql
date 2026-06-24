SELECT
  product_category_name_english,
  COUNT(*) AS total_orders,
  COUNTIF(is_late = 'Yes') AS late_orders,
  ROUND(COUNTIF(is_late = 'Yes') / COUNT(*) * 100, 2) AS late_delivery_rate
FROM 
  `prime-hour-500203-q4.olist_cleaned.master_orders`
GROUP BY product_category_name_english
ORDER BY late_delivery_rate DESC;