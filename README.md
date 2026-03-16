# 📊 Kimia Farma Business Performance Analysis 2020 - 2023

---


📌 Project Overview
This project is part of a Big Data Analytics initiative to evaluate the business performance of Kimia Farma, one of Indonesia's largest pharmaceutical companies. The primary goal is to transform raw operational data into actionable business insights using Google BigQuery for data warehousing and Google Looker Studio for interactive visualization.

### 🛠️ Tech Stack
- Data Warehouse: Google BigQuery
- Language: SQL (Standard SQL)
- Business Intelligence: Google Looker Studio
- Data Source: 4 Datasets (Transactions, Inventory, Branch, and Products)

### 🚀 Key Highlights & Features

1. Data Transformation (SQL Engineering)
   
I developed a robust SQL script to consolidate fragmented datasets into a single "Source of Truth" table. Key technical implementations include:
Tiered Profit Margin: Built a dynamic calculation using CASE WHEN statements to determine gross profit percentages based on product price ranges (ranging from 10% to 30%). Financial Metrics: Automated calculations for Nett Sales (Price - Discounts) and Nett Profit (Nett Sales * Profit Percentage).
Data Integration: Utilized LEFT JOIN operations to link transaction logs with branch locations and product catalogs.

2. Interactive Business Dashboard
   
The final dashboard provides a 360-degree view of the company’s health, featuring:
Performance Snapshots: Real-time tracking of Total Revenue, Nett Profit, and Transaction Volume. Geospatial Analysis: An Indonesia Geo Map visualizing profit distribution across all provinces to identify high-performing regions. Time-Series Trends: Year-over-year analysis of revenue growth and transaction patterns.

3. Operational Insights & Gap Analysis
   
One of the unique features of this analysis is the Rating Comparison:
Branch vs Transaction Ratings: Identified specific branches with a "Satisfaction Gap"—where high branch facility ratings were offset by low transaction service ratings. This helps management target operational bottlenecks in the payment/checkout process.

## 📊 Dashboard Preview (dummy data)
<img width="1005" height="746" alt="image" src="https://github.com/user-attachments/assets/1e20cc09-7772-4042-b5e1-8a837a73bac7" />




📂 Project Structure


sql_queries/: [Contains the SQL script used for data transformation in BigQuery.](https://drive.google.com/drive/u/0/folders/1qH3M5-b3BFZWcm7xnFiOjoqLJj5dEaua)

datasets/:[ Data Dictionary explaining the columns and metadata](https://drive.google.com/drive/u/0/folders/1qH3M5-b3BFZWcm7xnFiOjoqLJj5dEaua).

dashboard_link.txt: [Direct link to the interactive Looker Studio report.](https://lookerstudio.google.com/u/0/reporting/4d41e128-34ae-44b1-bcf3-cae8053f03d3/page/ucgrF)




## **THANK YOU**
