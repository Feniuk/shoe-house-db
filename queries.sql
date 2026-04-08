SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM categories;
SELECT * FROM orders;
SELECT * FROM warehouse;
SELECT * FROM payments;

UPDATE customers
SET phone = '987645691'
WHERE customer_id = '2'

DELETE FROM warehouse
WHERE stock_quantity = 0;

INSERT INTO customers (name, email)
VALUES ('Excellent Gradovich', 'gradovich@example.com');



SELECT 
    orders.order_id,
    customers.name,
    orders.status
FROM orders
JOIN customers 
ON orders.customer_id = customers.customer_id;

SELECT 
    order_details.order_id,
    order_details.quantity,
    order_details.order_price,
    products.name
FROM order_details
JOIN products 
ON order_details.product_id = products.product_id;


SELECT 
    order_details.quantity,
    order_details.order_price,
    orders.order_id,
    customers.name,
    products.name
FROM orders
JOIN customers 
    ON orders.customer_id = customers.customer_id
JOIN order_details 
    ON orders.order_id = order_details.order_id
JOIN products 
    ON order_details.product_id = products.product_id;



SELECT 
    SUM(order_details.quantity * order_details.order_price) AS total_spent,
    customers.name
FROM customers
JOIN orders 
    ON customers.customer_id = orders.customer_id
JOIN order_details 
    ON orders.order_id = order_details.order_id
GROUP BY customers.name;

SELECT 
    SUM(order_details.quantity) AS total_sold,
    products.name
FROM products
JOIN order_details 
    ON products.product_id = order_details.product_id
GROUP BY products.name
ORDER BY total_sold DESC;


SELECT 
    SUM(order_details.quantity * order_details.order_price) AS top_bill,
    customers.customer_id,
    customers.name
FROM customers
JOIN orders 
    ON customers.customer_id = orders.customer_id
JOIN order_details 
    ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id, customers.name
ORDER BY top_bill DESC
LIMIT 1;