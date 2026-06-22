CREATE TABLE `prime-hour-500203-q4.olist_cleaned.review_cleaned` AS 
  SELECT 
    *,
    CASE 
      WHEN review_score <= 2 THEN 'YES' ELSE 'NO' 
    END AS is_complaint
  FROM `prime-hour-500203-q4.olist_raw.olist_order_reviews_dataset`;