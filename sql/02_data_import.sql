-- 02: CSV Data Import (Source Kaggle)

-- 1. Customers
COPY customers (customer_id, customer_unique_id, customer_zip_code_prefix, customer_city, customer_state)
FROM 'C:\Users\Public\Brazilian E Commerce Public Dataset by Olist\olist_customers_dataset.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8';

-- 2. Orders
COPY orders (order_id, customer_id, order_status, order_purchase_timestamp, order_approved_at, order_delivered_carrier_date, order_delivered_customer_date, order_estimated_delivery_date)
FROM 'C:\Users\Public\Brazilian E Commerce Public Dataset by Olist\olist_orders_dataset.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8';

-- 3. Order Items
COPY order_items (order_id, order_item_id, product_id, seller_id, shipping_limit_date, price, freight_value)
FROM 'C:\Users\Public\Brazilian E Commerce Public Dataset by Olist\olist_order_items_dataset.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8';

-- 4. Order Payments
COPY order_payments (order_id, payment_sequential, payment_type, payment_installments, payment_value)
FROM 'C:\Users\Public\Brazilian E Commerce Public Dataset by Olist\olist_order_payments_dataset.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8';

-- 5. Products
COPY products (product_id, product_category_name, product_name_lenght, product_description_lenght, product_photos_qty, product_weight_g, product_length_cm, product_height_cm, product_width_cm)
FROM 'C:\Users\Public\Brazilian E Commerce Public Dataset by Olist\/olist_products_dataset.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8';

-- 6. Sellers
COPY sellers (seller_id, seller_zip_code_prefix, seller_city, seller_state)
FROM 'C:C:\Users\Public\Brazilian E Commerce Public Dataset by Olist\olist_sellers_dataset.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8';

-- 7. Product Category Name Translation
COPY product_category_name_translation (product_category_name, product_category_name_english)
FROM 'C:\Users\Public\Brazilian E Commerce Public Dataset by Olist\product_category_name_translation.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8';

-- Verification Query
SELECT 'customers' AS table_name, COUNT(*) FROM customers
UNION ALL SELECT 'orders', COUNT(*) FROM orders
UNION ALL SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL SELECT 'order_payments', COUNT(*) FROM order_payments
UNION ALL SELECT 'products', COUNT(*) FROM products
UNION ALL SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL SELECT 'product_category_name_translation', COUNT(*) FROM product_category_name_translation;