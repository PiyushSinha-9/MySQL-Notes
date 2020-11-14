
-- ----------------------		Outer Join

-- Inner Join or Join means the same
-- Outer Join has 2 types LEFT and RIGHT JOiN
-- LEFT OUTER JOIN is same as LEFT JOIN
-- RIGHT OUTER JOIN is same as RIGHT JOIN

USE sql_store;

		-- below Code Shows only customers who made the order
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

				-- below code shows all Customers
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;