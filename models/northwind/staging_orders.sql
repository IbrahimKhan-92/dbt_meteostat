WITH source_data AS (
    SELECT *
    FROM {{ source('northwind_data', 'orders') }}
)
SELECT
    order_id,
    customer_id,
    employee_id,
    order_date,
    required_date,
    shipped_date,
    ship_via,
    freight,
--	,shipname AS ship_name
--	,shipadress AS ship_address,
    ship_city,
--	,shipregion AS ship_region
    ship_postal_code,
    ship_country
FROM source_data
