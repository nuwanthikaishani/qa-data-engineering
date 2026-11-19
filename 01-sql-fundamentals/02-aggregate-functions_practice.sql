
-- =====================================================
-- 12. PRACTICE EXERCISES
-- Write your answers below
-- =====================================================

-- Exercise 1:
-- Count customers whose email is not NULL.

SELECT * COUNT(customer_email) AS customer_email_count FROM customers;



-- Exercise 2:
-- Find the highest customer_id.
SELECT MAX(customer_id) AS max_customer_id
FROM customers;


-- Exercise 3:
-- Find the lowest customer_id.
SELECT MIN(customer_id) AS min_customer_id
FROM customers;


-- Exercise 4:
-- Count the number of unique customer phone numbers.
--DISTINCT Keyword use for remove duplicates
SELECT COUNT(DISTINCT customer_phone) AS unique_customer_phone_no
FROM customers;

-- Exercise 5:
-- Calculate the percentage of customers with missing emails.


-- =====================================================
-- END OF PRACTICE
-- =====================================================