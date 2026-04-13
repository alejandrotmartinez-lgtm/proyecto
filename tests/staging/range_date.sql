select
    *
from {{ ref('stg_tpch__orders') }}
where o_orderdate > current_date()
   or o_orderdate < '1990-01-01'