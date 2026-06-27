CREATE OR REPLACE TABLE `prime-hour-500203-q4.olist_cleaned.master_orders` AS
SELECT 
    o.order_id,
    o.customer_id,
    o.order_purchase_timestamp,
    o.days_late,
    o.is_late,
    i.product_id,
    i.price,
    i.freight_value,
    p.product_category_name,
    t.product_category_name_english,
    COALESCE(cl.category_label, t.product_category_name_english) AS category_display,
    r.review_score,
    r.is_complaint
FROM `prime-hour-500203-q4.olist_cleaned.orders_cleaned` o
LEFT JOIN `prime-hour-500203-q4.olist_raw.olist_order_items_dataset` i
    ON o.order_id = i.order_id
LEFT JOIN `prime-hour-500203-q4.olist_raw.olist_products_dataset` p
    ON i.product_id = p.product_id
LEFT JOIN `prime-hour-500203-q4.olist_raw.olist_product_category_name_translation` t
    ON p.product_category_name = t.product_category_name
LEFT JOIN `prime-hour-500203-q4.olist_cleaned.category_labels` cl
    ON t.product_category_name_english = cl.category_key
LEFT JOIN `prime-hour-500203-q4.olist_cleaned.review_cleaned` r
    ON o.order_id = r.order_id