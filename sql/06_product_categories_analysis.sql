-- =====================================================================
-- Script 6: Top Product Categories Analysis
-- Business Goal: Identify top revenue-generating product categories to 
--                drive marketing focus and inventory management.
-- =====================================================================

SELECT 
    p.product_category_name,
    COUNT(p.product_category_name) AS total_number_of_categories,
    ROUND(SUM(oi.price), 2) AS total_sum_of_prices
FROM order_items AS oi
LEFT JOIN products AS p
    ON oi.product_id = p.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY p.product_category_name
ORDER BY ROUND(SUM(oi.price), 2) DESC;