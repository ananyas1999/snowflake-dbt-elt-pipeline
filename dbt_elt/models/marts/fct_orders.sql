{{ config(materialized='table') }}

select
    order_date,
    count(*) as total_orders,
    sum(total_amount) as total_revenue,
    sum(quantity) as total_units
from {{ ref('orders') }}
group by order_date
