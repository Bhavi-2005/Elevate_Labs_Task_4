
-- a. SELECT, WHERE, ORDER BY, GROUP BY

-- Total orders per customer (Top 10)
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;

-- Orders from São Paulo
SELECT o.order_id, c.customer_id, c.customer_city
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.customer_city = 'sao paulo'
ORDER BY o.order_purchase_timestamp DESC;


-- b. JOINS (INNER, LEFT, RIGHT simulated)

-- INNER JOIN: Product with category and order
SELECT p.product_id, p.product_category_name, oi.order_id
FROM products p
INNER JOIN order_items oi ON p.product_id = oi.product_id;

-- LEFT JOIN: Orders and Reviews
SELECT o.order_id, r.review_score
FROM orders o
LEFT JOIN order_reviews r ON o.order_id = r.order_id;

-- Simulated RIGHT JOIN: Sellers without orders
SELECT s.seller_id
FROM sellers s
LEFT JOIN order_items oi ON s.seller_id = oi.seller_id
WHERE oi.order_id IS NULL;


-- c. Subqueries

-- Customers who spent more than average
SELECT o.customer_id, SUM(op.payment_value) AS total_spent
FROM orders o
JOIN order_payments op ON o.order_id = op.order_id
GROUP BY o.customer_id
HAVING total_spent > (
    SELECT AVG(payment_value)
    FROM order_payments
);


-- d. Aggregate Functions (SUM, AVG)

-- Average payment per order
SELECT AVG(payment_value) AS avg_payment
FROM order_payments;

-- Total revenue per payment type
SELECT payment_type, SUM(payment_value) AS total_revenue
FROM order_payments
GROUP BY payment_type
ORDER BY total_revenue DESC;


-- e. Create Views

-- High-Value Customers
CREATE VIEW high_value_customers AS
SELECT o.customer_id, SUM(op.payment_value) AS total_spent
FROM orders o
JOIN order_payments op ON o.order_id = op.order_id
GROUP BY o.customer_id
HAVING total_spent > 1000;

-- Orders and Review Summary
CREATE VIEW order_review_summary AS
SELECT o.order_id, o.customer_id, r.review_score
FROM orders o
LEFT JOIN order_reviews r ON o.order_id = r.order_id;


-- f. Indexes

-- Index on customer_id
CREATE INDEX idx_customer_id ON orders(customer_id);

-- Index on seller_id
CREATE INDEX idx_seller_id ON order_items(seller_id);
