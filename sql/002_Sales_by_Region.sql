CREATE VIEW Sales_by_Region AS
SELECT
    Region,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_units_sold,
    RANK() OVER (ORDER BY (SUM(revenue)) DESC) AS revenue_rank
FROM Clean_Sales_View
GROUP BY Region;