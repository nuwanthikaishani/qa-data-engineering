-- ==========================================
-- LESSON 1: SQL FUNDAMENTALS
-- ==========================================

-- 1. CREATE DATABASE
CREATE DATABASE SHOP;

USE SHOP;

-- 1. CREATE DATABASE TABLES
CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_phone VARCHAR(15)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
   FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

-- 2. INSERT SAMPLE DATA
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone) VALUES
(1, 'John Doe', 'john.doe@example.com', '123-456-7890');
 (2, 'Mary', 'mary@gmail.com', '123-456-7890'),
 (3, 'David', 'david@gmail.com', '123-456-7890'),
 (4, 'Sarah', NULL, '123-456-7890'),
 (5, 'Peter', 'peter@gmail.com', '123-456-7890');

 INSERT INTO orders( order_id, customer_id, order_date, amount) VALUES
 (1, 1, '2023-01-01', 100.00),
 (2, 2, '2023-01-02', 200.00),
 (3, 3, '2023-01-03', 300.00),
 (4, 4, '2023-01-04', 400.00),
 (5, 5, '2023-01-05', 500.00);


-- 3. Retrieve every columns
SELECT * FROM customers;
SELECT * FROM orders;

-- 4. Retrieve specific columns
SELECT customer_name, customer_email FROM customers;
SELECT order_id,customer_id, amount FROM orders;

-- 4. WHERE
SELECT * FROM customers WHERE customer_email = "david@gmail.com";
SELECT customer_name, customer_email FROM customers WHERE customer_email IS NULL;

-- 5. ORDER BY
SELECT * FROM customers ORDER BY customer_name ASC;

-- 6. UPDATE Query
UPDATE customers SET customer_name = "Ishani" WHERE customer_id = '1';

-- 7. DELETE Query
DELETE FROM customers where customer_name = "Ishani";

