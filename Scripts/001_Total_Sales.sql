CREATE VIEW Global_Retail_Summary AS
SELECT
    SUM(Quantity) AS Total_Products_Sold,
    SUM(Unit_Price * Quantity) AS Total_Revenue,
    SUM((Unit_Price - Unit_Cost) * Quantity) AS Total_Profit
FROM YUL_KBeauty_Sales_2026;

