SELECT 
  product_category_name_english,
  ROUND(SUM(price+freight_value),2) AS total_revenue,
  ROUND(COUNTIF(is_late='Yes')/COUNT(*)*100, 2) AS late_delivery_rate,
  ROUND((SUM(price+freight_value))*(COUNTIF(is_late='Yes')/COUNT(*)*100)/100, 2) AS revenue_at_risk 
FROM 
  `prime-hour-500203-q4.olist_cleaned.master_orders`
GROUP BY 
  product_category_name_english
ORDER BY 
  revenue_at_risk DESC 