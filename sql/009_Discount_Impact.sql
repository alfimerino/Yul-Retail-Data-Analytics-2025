CREATE VIEW Discount_Impact AS
SELECT
    Discount,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    COUNT(*) AS total_transactions
FROM Clean_Sales_View
GROUP BY Discount;