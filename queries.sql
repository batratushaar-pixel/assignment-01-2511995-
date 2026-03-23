
SELECT c.name, SUM(p.price * oi.quantity) AS total_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON p.product_id = oi.product_id
WHERE c.city = 'Mumbai'
GROUP BY c.name;

SELECT p.product_name, SUM(oi.quantity) AS total_qty
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_qty DESC
LIMIT 3;

SELECT sr.rep_name, COUNT(DISTINCT o.customer_id) AS customers_handled
FROM sales_rep sr
JOIN orders o ON sr.rep_id = o.rep_id
GROUP BY sr.rep_name;

SELECT o.order_id, SUM(p.price * oi.quantity) AS total_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON p.product_id = oi.product_id
GROUP BY o.order_id
HAVING total_value > 10000
ORDER BY total_value DESC;

SELECT p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;