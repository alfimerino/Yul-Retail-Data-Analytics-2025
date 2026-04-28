CREATE VIEW Skin_Type_Performance AS
SELECT
    Skin_Type,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM Clean_Sales_View
GROUP BY Skin_Type;