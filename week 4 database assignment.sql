
-- Week 4 Database Assignment
-- Topic: Advanced SQL Queries and Aggregations

USE sales;

-- Question 1: Find the total payment made on each date.
-- Show the five most recent payment dates first.

SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- Question 2: Find the average credit limit for each customer.
-- Display the customer's name, country, and average credit limit.

SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- Question 3: Calculate the total price of products ordered.
-- Show the product code, quantity ordered, and total price.

SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- Question 4: Find the highest payment amount for each check number.

SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
