CREATE VIEW Sales_by_Channel AS
SELECT
    Channel,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT Order_ID) AS total_orders,
    SUM(Quantity) AS total_units_sold
FROM Clean_Sales_View
GROUP BY Channel;