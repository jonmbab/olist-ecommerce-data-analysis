-- =====================================================================
-- Script 5: Logistics & Delivery Performance Analysis
-- Business Goal: Measure operational efficiency by analyzing delivery 
--                durations and categorizing orders into On-Time vs. Delayed.
-- =====================================================================

WITH delivery_windows AS (
    SELECT 
        order_id,
        ROUND(EXTRACT(epoch FROM order_delivered_customer_date - order_purchase_timestamp)/86400, 2) AS total_delivery_time,
        ROUND(EXTRACT(epoch FROM order_delivered_customer_date - order_estimated_delivery_date)/86400, 2) AS delivery_window,
        CASE 
            WHEN ROUND(EXTRACT(epoch FROM order_delivered_customer_date - order_estimated_delivery_date)/86400, 2) < 0.00 THEN 'Fast Delivery'
            WHEN ROUND(EXTRACT(epoch FROM order_delivered_customer_date - order_estimated_delivery_date)/86400, 2) = 0.00 THEN 'Just in Time'
            ELSE 'Delayed Delivery' 
        END AS delivery_label
    FROM orders
)

SELECT
    delivery_label,
    COUNT(delivery_label) AS total_delivery_labels
FROM delivery_windows
GROUP BY delivery_label;