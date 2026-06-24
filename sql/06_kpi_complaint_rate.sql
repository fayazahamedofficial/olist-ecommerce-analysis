SELECT
  product_category_name_english,
  COUNT(*) AS total_reviews,
  COUNTIF(is_complaint='YES') AS total_complaints,
  ROUND(COUNTIF(is_complaint='YES')/COUNT(*) * 100,2) AS complaint_rate
FROM 
  `prime-hour-500203-q4.olist_cleaned.master_orders`
GROUP BY product_category_name_english
ORDER BY complaint_rate DESC;