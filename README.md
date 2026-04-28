# YUL Retail Wellness Sales Analytics (2025)
<p align="center">
  <img src="docs/Yul_Logo.png" alt="Yul Logo" width="400">
</p>

## Project Overview

This project analyzes 2025 sales data for a wellness brand focused on hair and facial care products. The goal is to uncover actionable business insights across different regions and sales channels, and present them through a structured analytics pipeline using SQL and Power BI. This project will assist business stakeholder (e.g., Head of Sales or Marketing) needs clear answers to questions about performance, trends, and growth opportunities.

## Business Questions

This analysis answers key questions such as:
- Which regions generated the most revenue?
- How do different sales channels perform (Local, Online, Sephora)?
- What are the monthly sales trends?
- Which product categories drive the most revenue?
- Where are the biggest opportunities for growth?
  
## Tech Stack
- Database: Azure SQL
- Querying: SQL (Views for analytics layer)
- Visualization: Power BI
- Version Control: GitHub

## Project Structure
```
/sql        → SQL scripts (views, transformations)
/data       → Raw dataset (CSV)
/powerbi    → Power BI dashboard file (.pbix)
/docs       → Screenshots and documentation
```

## Data Overview
The dataset represents sales transactions from 2025.
### Key Fields:
- `Order_ID` – Order Identifier 
- `Date` – Order Date 
- `Product_ID` – Product Identifier 
- `Product_Name` – Product Name (Char)
- `Category` – Product Type: Hair, Skin (Char)
- `Quantity` – Product count purchased in Order 
- `Unit_Cost` – Product Sales Cost 
- `Unit_Price` – Product Sales Price 
- `Discount` – Order discount applied (Percent)
- `Channel` – Location type where order was placed: Online: Sephora, Online, Flagship Store, Olive Young
- `Region` – Geographic Location where order was placed: London, Tokyo, NYC, Seoul
- `Skin_Type` – Categorizes products based on the targeted skin profile, such as Oily, Dry, Combination, or Sensitive.

## SQL Analytics Layer
To keep the reporting layer clean and efficient, reusable SQL views were created.
### Key Views:
- `total_sales` → Overall revenue and units sold
- `sales_by_region` → Regional performance ranking
- `sales_by_store_type` → Channel comparison
- `monthly_sales` → Time-based trends
- `top_categories` → Product performance
- `region_store_performance` → Combined breakdown
These views act as a semantic layer between raw data and Power BI.

## Power BI Dashboard
The dashboard provides a clear, interactive view of the business.
### Features:
KPI cards for total revenue and units sold
Sales by region (bar chart)
Store type comparison (channel performance)
Monthly sales trend (line chart)
Filters for region, store type, and category

## Key Insights
(Replace with your actual findings)
The top-performing region was [Region Name], contributing the highest revenue
Online sales outperformed physical retail channels
Sales peaked during [Month/Season], indicating seasonal demand
[Product Category] was the highest revenue-generating category

## AI Use Case (Optional)
This project can be extended with tools like Microsoft Copilot or ChatGPT to allow business users to ask questions such as:
“What region had the highest sales?”
“Show me monthly trends for online sales”
These tools can translate natural language into SQL queries against the analytics views.
