SELECT 
    *   
FROM
    {{ ref('fact_orders') }}
WHERE 
    date(order_date) > CURRENT_DATE() 
    OR date(order_date) < '1990-01-01';