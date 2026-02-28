{{ config(materialized='view') }}

select
    order_id as order_id,
    customer_id as customer_id,
    to_date(order_date) as order_date,
    status as order_status,
    product_id as product_id,
    quantity::number as quantity,
    price::number as price,
    total_amount::number as total_amount,
    to_timestamp(cdc_timestamp) as change_time
from {{ source('snowflake_source', 'orders') }}
