SELECT 
    c_custkey 
from {{ ref('int_customers_cleaned') }}
GROUP BY c_custkey 
HAVING COUNT(*) > 1