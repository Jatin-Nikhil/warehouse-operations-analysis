SELECT orders.order_id, products.product_name, order_details.quantity
FROM order_details
JOIN orders ON order_details.order_id = orders.order_id
JOIN products ON order_details.product_id = products.product_id;