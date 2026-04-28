CREATE VIEW Total_Sales AS
SELECT
    SUM(revenue) AS total_revenue,
    SUM(cost) AS total_cost,
    SUM(profit) AS total_profit,
    SUM(Quantity) AS total_units_sold,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM Clean_Sales_View;