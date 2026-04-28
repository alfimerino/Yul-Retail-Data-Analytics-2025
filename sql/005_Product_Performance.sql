CREATE VIEW Product_Performance AS
SELECT
    Product_Name,
    Category,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    SUM(Quantity) AS total_units_sold,
    RANK() OVER (ORDER BY SUM(revenue) DESC) AS product_rank
FROM Clean_Sales_View
GROUP BY Product_Name, Category;