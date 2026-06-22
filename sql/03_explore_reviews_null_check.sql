SELECT 
  COUNT(*) AS total_reviews,
  COUNTIF(review_score IS NULL) AS missing_review_score,
  COUNTIF(review_score < 1 OR review_score>5)  AS invalid_review
FROM 
  `prime-hour-500203-q4.olist_raw.olist_order_reviews_dataset`
