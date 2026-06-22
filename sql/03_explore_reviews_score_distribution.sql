SELECT 
  review_score,
  COUNT(*) AS total_reviews
FROM 
  prime-hour-500203-q4.olist_raw.olist_order_reviews_dataset
GROUP BY review_score
ORDER BY review_score DESC;