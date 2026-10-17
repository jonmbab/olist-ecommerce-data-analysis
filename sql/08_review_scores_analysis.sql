-- =====================================================================
-- Script 8: Review Scores vs. Delivery Performance
-- Business Goal: Prove the direct impact of delivery delays on customer 
--                satisfaction by comparing review scores.
-- =====================================================================

SELECT 
    CASE 
        WHEN o.order_delivered_customer_date < o.order_estimated_delivery_date THEN 'punctual'
        ELSE 'delayed' 
    END AS deliver_time,
    COUNT(r.review_score) AS total_reviews,
    ROUND(AVG(r.review_score), 2) AS avg_review_score
FROM orders AS o
INNER JOIN order_reviews AS r
    ON o.order_id = r.order_id
GROUP BY 
    CASE 
        WHEN o.order_delivered_customer_date < o.order_estimated_delivery_date THEN 'punctual'
        ELSE 'delayed' 
    END;