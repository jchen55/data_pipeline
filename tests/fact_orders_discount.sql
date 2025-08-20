-- this is a singular test
-- test if the query returns any rows with negative total_discounted_amount
-- this is to ensure that the fact_orders table does not contain any negative discounted amounts
-- if it does, it indicates an issue with the discount calculation or data integrity
-- this query will help identify any such rows for further investigation
select 
    * 
from 
    {{ ref('fact_orders')}}
where
    total_discounted_amount > 0 