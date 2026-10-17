SELECT 
TO_CHAR(o.order_purchase_timestamp, 'YYYY-MM') AS year_month,
COUNT(o.order_id) AS order_volume_per_month,
ROUND(SUM(price), 2) AS total_sum_per_month
FROM orders AS o
INNER JOIN order_items AS oi
ON o.order_id = oi.order_id
GROUP BY TO_CHAR(o.order_purchase_timestamp, 'YYYY-MM')
ORDER BY year_month ASC;
