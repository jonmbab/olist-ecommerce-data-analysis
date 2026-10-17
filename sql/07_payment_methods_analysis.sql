-- =====================================================================
-- Script 7: Payment Behavior & Installments Analysis
-- Business Goal: Understand preferred customer payment methods and the 
--                average number of installments (parcelamento) used.
-- =====================================================================

SELECT 
    payment_type,
    COUNT(*) AS transaction_count,
    ROUND(SUM(payment_value), 2) AS total_payment_value,
    ROUND(AVG(payment_installments), 1) AS avg_payment_installments
FROM order_payments
GROUP BY payment_type
ORDER BY ROUND(SUM(payment_value), 2) DESC;