with lineitem as (
    select * from {{ ref('stg_tpch__lineitem') }}
)

select
    l_commitdate,
    l_receiptdate, 
    l_shipdate
from lineitem
where 
    (l_commitdate < '1990-01-01' or l_commitdate > '2000-12-31')
    or 
    (l_receiptdate < '1990-01-01' or l_receiptdate > '2000-12-31')
    or 
    (l_shipdate < '1990-01-01' or l_shipdate > '2000-12-31')