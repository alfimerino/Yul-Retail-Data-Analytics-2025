SELECT
    COUNT(Quantity) AS Total_Products_Sold,
    SUM(revenue) AS Total_Revenue,
    SUM(profit) AS Total_Profit
FROM Clean_Sales_View