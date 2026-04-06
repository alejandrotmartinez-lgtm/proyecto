with orders as (
    select * from {{ ref('fct_orders') }}
)

select
    order_key,
    net_item_sales_amount
from orders
where net_item_sales_amount < 0