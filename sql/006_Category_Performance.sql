CREATE VIEW Category_Performance AS
SELECT
    Category,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    SUM(Quantity) AS total_units_sold
FROM Clean_Sales_View
GROUP BY Category;