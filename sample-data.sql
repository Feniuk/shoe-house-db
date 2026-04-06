INSERT INTO categories (name) VALUES
('Sneakers'),
('Sports'),
('Casual'),
('Boots');

INSERT INTO products (name, brand, price, category_id) VALUES
('C.P. Company X Asics', 'C.P. Company X Asics', 200.00, 1),
('Nike Alphafly 3', 'Nike', 250.00, 2),
('Stone Island X New Balance', 'Stone Island X New Balance', 290.00, 3),
('Timberland ', 'Timberland', 150.00, 4);

INSERT INTO customers (name, email, phone) VALUES
('Albert Einstein', 'einstein@example.com', '123456789'),
('El Mozart', 'tapia@example.com', '987654321'),
('Putin Huylo', 'huylo@example.com', '555666777');

INSERT INTO warehouse (product_id, size, stock_quantity) VALUES
(1, 42, 10),
(1, 43, 5),
(2, 41, 8),
(2, 42, 6),
(3, 40, 7),
(4, 44, 3);

INSERT INTO orders (customer_id, status) VALUES
(1, 'cancelled'),
(2, 'completed'),
(3, 'completed'),
(4, 'pending');

INSERT INTO order_details (order_id, product_id, quantity, order_price) VALUES
(9, 4, 2, 300.00),
(10, 2, 1, 250.00),
(11, 1, 1, 200.00),
(12, 3, 1, 290.00);

INSERT INTO payments (order_id, amount, payment_method, status) VALUES
(9, 300.00, 'credit_card', 'paid'),
(10, 250.00, 'paypal', 'pending');
(11, 200.00, 'crypto', 'paid');
(12, 290.00, 'bank transfer', 'failed');