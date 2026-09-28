WITH source_data AS (
    SELECT *
    FROM {{ source('northwind_data', 'products') }}
)
SELECT
     product_id
    ,product_name
    ,supplier_id
    ,category_id
--	,quantity_per_unit
    ,unit_price::NUMERIC AS unit_price
--	,units_in_stock::INT AS units_in_stock
--	,units_on_order::INT AS units_on_order
--	,discontinued
FROM source_data