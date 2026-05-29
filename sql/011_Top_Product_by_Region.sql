CREATE VIEW view_top_product_by_region AS
WITH product_sales AS (
    SELECT
        Region,
        Product_Name,
        SUM(revenue) AS total_revenue
    FROM Clean_Sales_View
    GROUP BY
        Region,
        Product_Name
),

ranked_products AS (
    SELECT
        Region,
        Product_Name,
        total_revenue,
        RANK() OVER (
            PARTITION BY Region
            ORDER BY total_revenue DESC
        ) AS revenue_rank
    FROM product_sales
)

SELECT
    Region,
    Product_Name,
    total_revenue
FROM ranked_products
WHERE revenue_rank = 1;