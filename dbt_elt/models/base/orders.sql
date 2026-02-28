{{ config(
    materialized='incremental',
    unique_key='ORDER_ID'
) }}

select *
from {{ ref('stg_orders') }}

{% if is_incremental() %}
where ORDER_ID not in (
    select ORDER_ID from {{ this }}
)
{% endif %}
