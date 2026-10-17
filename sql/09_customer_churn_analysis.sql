-- =====================================================================
-- Script 9: Customer Churn Rate Analysis
-- Business Goal: Calculate customer retention and churn rate based on a 
--                180-day inactivity threshold relative to the database max date.
-- =====================================================================

WITH last_purchase_date AS (
    -- Step 1: Determine the global latest order date in the dataset
    SELECT
        MAX(CAST(order_purchase_timestamp AS DATE)) AS last_order
    FROM orders
),

customer_label AS (
    -- Step 2: Calculate days since last purchase for each unique customer
    SELECT
        c.customer_unique_id,
        last_order - MAX(CAST(o.order_purchase_timestamp AS DATE)) AS diff_last_order_max_date,
        CASE 
            WHEN last_order - MAX(CAST(o.order_purchase_timestamp AS DATE)) <= 180 THEN 'active'
            ELSE 'churned' 
        END AS customer_activity
    FROM customers AS c
    INNER JOIN orders AS o
        ON c.customer_id = o.customer_id
    CROSS JOIN last_purchase_date
    GROUP BY c.customer_unique_id, last_order
)

-- Step 3: Aggregate and calculate the exact percentage distribution
SELECT 
    customer_activity,
    COUNT(customer_activity) AS total_labels,
    ROUND(COUNT(customer_activity) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM customer_label
GROUP BY customer_activity;