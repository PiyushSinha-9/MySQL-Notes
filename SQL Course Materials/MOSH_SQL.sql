-- 		 SELECT CLAUSE

USE sql_store;

SELECT *
FROM customers
WHERE customer_id = 1
ORDER BY first_name;


SELECT 
	last_name,
    first_name,
    (points + 10) * 100 AS New_Name
FROM customers;

SELECT DISTINCT state 
FROM customers;

SELECT 
	name, 
    unit_price,
    unit_price * 1.1 AS 'new price'
FROM products;

-- ----------------------		WHERE CLAUSE

-- > , >=, =, != or <>

--				YEAR_MONTH_DATE
SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' ;

SELECT *
FROM orders
WHERE order_date >= '2019-01-01' ;

-- ----------------------		OR AND NOT

 SELECT *
 FROM order_items
 WHERE order_id = 6 AND quantity * unit_price > 30;

-- ----------------------		IN OPERATOR and NOT IN

SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA');

SELECT *
FROM products
WHERE quantity_in_stock IN (49,38,72);

-- ----------------------		BETWEEN OPERATOR

SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;
-- works with date also

-- ----------------------		LIKE OPERATOR

-- 			LIKE operator is old and advance version is aviable % and _

SELECT *
FROM customers
WHERE last_name LIKE 'b%';
--				ALL entries whose last_name starts with b OR B

SELECT *
FROM customers
WHERE last_name LIKE '%b%';
-- 				ALL entries whose last_name contains b or B


SELECT *
FROM customers
WHERE last_name LIKE '_e%';
--				ALL entries whose last name second letter is e

-- NOTE -> there is nothing like IN LIKE or LIKE IN  beware

-- ----------------------		REGEXP OPERATOR



