select 
    items.order_key,
    sum(extended_price) AS total_extended_price,
    sum(discounted_price) AS total_discounted_amount
from
    {{ ref('int_order_items') }} AS items
GROUP BY 
    items.order_key
ORDER BY 
    items.order_key