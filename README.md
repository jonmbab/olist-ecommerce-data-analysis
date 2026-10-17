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

```text
├── 01_schema_setup.sql             # Table creation and data type definitions
├── 02_data_import.sql               # CSV data loading and schema mapping
├── 03_constraints.sql               # Primary and Foreign Key constraints setup
├── 04_monthly_revenue_analysis.sql  # Monthly GMV & order volume trends
├── 05_logistics_delivery_analysis.sql # Delivery duration & delayed order labeling (CTE)
├── 06_product_categories_analysis.sql# Top revenue-generating product categories
├── 07_payment_methods_analysis.sql   # Payment methods breakdown & average installments
├── 08_review_scores_analysis.sql    # Impact of delivery delays on review scores
└── 09_customer_churn_analysis.sql   # Customer churn rate calculation (CROSS JOIN & Window Functions)