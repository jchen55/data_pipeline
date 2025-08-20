SELECT 
    orders.*,
    order_items_summary.total_discounted_amount,
    order_items_summary.total_extended_price
FROM
    {{ ref('stg_tpch_orders') }} AS orders
INNER JOIN
    {{ ref('int_order_items_summary') }} AS order_items_summary
ON
    orders.order_key = order_items_summary.order_key      
ORDER BY
    orders.order_date