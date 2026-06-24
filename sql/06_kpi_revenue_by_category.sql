SELECT 
  product_category_name_english,
  ROUND(SUM(price+freight_value),2) AS total_revenue
FROM 
  `prime-hour-500203-q4.olist_cleaned.master_orders`
GROUP BY 
  product_category_name_english
ORDER BY 
  total_revenue DESC;