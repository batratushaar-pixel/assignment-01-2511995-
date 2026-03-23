
SELECT c.name, COUNT(o.order_id)
FROM 'customers.csv' c
LEFT JOIN 'orders.json' o ON c.id = o.customer_id
GROUP BY c.name;

SELECT c.name, SUM(o.amount) as total
FROM 'customers.csv' c
JOIN 'orders.json' o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total DESC
LIMIT 3;

SELECT p.name
FROM 'customers.csv' c
JOIN 'orders.json' o ON c.id = o.customer_id
JOIN 'products.parquet' p ON o.product_id = p.id
WHERE c.city = 'Bangalore';

SELECT c.name, o.date, p.name, o.quantity
FROM 'customers.csv' c
JOIN 'orders.json' o ON c.id = o.customer_id
JOIN 'products.parquet' p ON o.product_id = p.id;