-- 1. VIEW EXISTING CUSTOMER DATA
SELECT * FROM customers;

--COUNT TOTAL CUSTOMERS - COUNT()
SELECT COUNT(*) AS total_customers FROM customers;

-- 3. COUNT() - COUNT NON-NULL EMAILS
-- =====================================================

SELECT COUNT(customer_email) AS customers_with_email
FROM customers;

-- 4. COUNT() - COUNT MISSING EMAILS
-- Data Quality Check

SELECT COUNT(*) AS customers_missing_email_count
FROM customers
WHERE customer_email IS NULL;

-- 5. SUM() - TOTAL CUSTOMER IDS
-- Demonstration only, not a business metric


SELECT SUM(customer_id) AS total_customer_ids
FROM customers;

-- 6. AVG() - AVERAGE CUSTOMER ID
-- Demonstration only, not a business metric

SELECT AVG(customer_id) AS average_customer_id
FROM customers;

-- 7. MIN() - LOWEST CUSTOMER ID

SELECT MIN(customer_id) AS min_customer_id
FROM customers;

-- 8. MAX() - HIGHEST CUSTOMER ID

SELECT MAX(customer_id) AS max_customer_id FROM customers;


-- 10. COUNT DISTINCT EMAILS
-- Data Quality Check



