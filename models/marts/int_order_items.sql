SELECT
    line_items.line_item_key,
    line_items.order_key,
    line_items.part_key,
    line_items.extended_price,
    orders.customer_key,
    orders.order_status,
    orders.order_date,
    {{ discounted_amount('line_items.extended_price', 'line_items.discount') }} AS discounted_price
FROM
    {{ ref('stg_tpch_orders') }} AS orders
INNER JOIN
    {{ ref('stg_tpch_line_items') }} AS line_items
ON
    orders.order_key = line_items.order_key
order by 
    orders.order_date