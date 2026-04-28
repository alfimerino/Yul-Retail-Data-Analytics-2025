SELECT
    SUM(Quantity) AS Total_Products_Sold,
    SUM(Unit_Price * Quantity) AS Total_Revenue,
    SUM((Unit_Price - Unit_Cost) * Quantity) AS Total_Profit
FROM YUL_KBeauty_Sales_2026;

Select DISTINCT Region
FROM YUL_KBeauty_Sales_2026;

SELECT
    Order_ID,
    CAST(Date AS DATE) AS order_date,
    CAST(Product_ID AS INT) AS Product_ID,
    Product_Name,
    Category,
    Quantity,
    Unit_Cost,
    Unit_Price,
    Discount,
    Channel,
    Region,
    Skin_Type,

    -- Derived metrics
    (Quantity * Unit_Price * (1 - Discount)) AS revenue,
    (Quantity * Unit_Cost) AS cost,
    (Quantity * Unit_Price * (1 - Discount)) - (Quantity * Unit_Cost) AS profit

FROM YUL_KBeauty_Sales_2026
WHERE Quantity > 0
  AND Unit_Price IS NOT NULL;