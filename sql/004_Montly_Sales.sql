CREATE VIEW Monthly_Sales AS    
SELECT
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    DATENAME(MONTH, order_date) AS month_name,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit
FROM Clean_Sales_View
GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    DATENAME(MONTH, order_date)