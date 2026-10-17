# 🛒 Olist E-Commerce Analytics: End-to-End SQL & Data Pipeline

A comprehensive SQL-based data analytics project exploring real-world e-commerce data from Brazil’s largest marketplace, **Olist**. This project covers database schema engineering, relational integrity setup, exploratory data analysis (EDA), and executive-level business insights regarding revenue, logistics, customer satisfaction, and retention.

---

## 🔍 Executive Summary

Analysis of over **100,000 orders** placed between 2016 and 2018 revealed crucial operational insights:
* **Growth & Revenue:** Revenue shows strong expansion, driven heavily by top categories like Health & Beauty (`beleza_saude`).
* **Logistics Bottlenecks:** Delivery delays severely impact customer sentiment—reducing average review scores from **~4.2 to ~2.2 stars**.
* **Payment Preferences:** Credit cards dominate sales volume, with customers taking advantage of installments (averaging **3.5 installments** per order).
* **Customer Retention Challenge:** The platform suffers from a **~71% customer churn rate** (inactive > 180 days), highlighting an urgent need for re-engagement strategies.

---

## 🛠️ Tech Stack & Infrastructure

* **Database Management System:** PostgreSQL / pgAdmin 4
* **Version Control:** Git & GitHub / GitHub Desktop
* **Scripting & Queries:** Advanced PostgreSQL (CTEs, Window Functions, Date/Time Arithmetic, Aggregations)

---

## 📂 Project Structure & Script Overview

The repository is organized into modular `.sql` scripts representing the data pipeline from setup to advanced analytics:

* `01_schema_setup.sql` — Table creation and data type definitions
* `02_data_import.sql` — CSV data loading and schema mapping
* `03_constraints.sql` — Primary and Foreign Key constraints setup
* `04_monthly_revenue_analysis.sql` — Monthly GMV & order volume trends
* `05_logistics_delivery_analysis.sql` — Delivery duration & delayed order labeling (CTE)
* `06_product_categories_analysis.sql` — Top revenue-generating product categories
* `07_payment_methods_analysis.sql` — Payment methods breakdown & average installments
* `08_review_scores_analysis.sql` — Impact of delivery delays on review scores
* `09_customer_churn_analysis.sql` — Customer churn rate calculation (CROSS JOIN & Window Functions)

---

## 💡 Key Business Insights

### 1. Revenue & Monthly Growth (`04_monthly_revenue_analysis.sql`)
* Tracks monthly Gross Merchandise Value (GMV) and transaction volume.
* Identifies clear seasonal demand peaks across peak shopping quarters.

### 2. Logistics & Delivery Performance (`05_logistics_delivery_analysis.sql`)
* Implemented a CTE to calculate exact delivery durations (`EXTRACT(epoch ...)`).
* Categorized orders into `Fast Delivery`, `Just in Time`, and `Delayed Delivery`.

### 3. Top Product Categories (`06_product_categories_analysis.sql`)
* **`beleza_saude`** (Health & Beauty) emerged as the single highest revenue-generating category, followed by home goods and furniture.

### 4. Payment Behavior (`07_payment_methods_analysis.sql`)
* Credit card is the primary payment method by sales volume.
* Brazilian consumers heavily rely on installment plans (*parcelamento*), with an average of **3.5 installments** per credit card order.

### 5. Delivery Delays vs. Customer Satisfaction (`08_review_scores_analysis.sql`)
* On-time deliveries achieve a high average review score (**~4.2 / 5.0**).
* Late deliveries suffer a massive drop in customer rating (**~2.2 / 5.0**), proving logistics delays directly damage brand reputation.

### 6. Customer Retention & Churn Rate (`09_customer_churn_analysis.sql`)
* Using a dynamic threshold (>180 days since the last purchase relative to the dataset’s maximum order date), the calculated **churn rate stands at ~71%**.
* Key Takeaway: Olist is highly effective at acquiring new customers, but requires loyalty programs to drive repeat purchases.

---

## 🚀 How to Run This Project

1. **Clone the Repository:**
   git clone https://github.com/jonmbab/olist-ecommerce-data-analysis.git

2. **Setup PostgreSQL Database:**
   * Create a database named `olist_db`.
   * Run scripts `01_schema_setup.sql`, `02_data_import.sql`, and `03_constraints.sql` in sequence.

3. **Run Analytics:**
   * Execute scripts `04` through `09` in pgAdmin to reproduce all business insights.
