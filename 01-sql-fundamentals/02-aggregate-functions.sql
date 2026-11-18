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
