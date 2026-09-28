WITH sales AS (
    SELECT * FROM {{ ref('prep_sales') }}
)
SELECT
    order_year
    ,order_month
    ,category_name
    ,ROUND(SUM(revenue)::NUMERIC, 2) AS total_revenue
    ,COUNT(DISTINCT order_id) AS total_orders
    -- revenue per ORDER (not per order line), so divide by distinct orders
    ,ROUND((SUM(revenue) / COUNT(DISTINCT order_id))::NUMERIC, 2) AS avg_revenue_per_order
FROM sales
GROUP BY 1, 2, 3
ORDER BY category_name, order_year, order_month
