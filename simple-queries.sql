/*10 SIMPLE (Basic Level) Questions*/

-- 1. List all customers from the Customers table. 
SELECT 
    *
FROM
    customers;

-- 2. Show all products with their price.
SELECT 
    product_name, price
FROM
    products;

-- 3. Retrieve all salespersons hired after 2021.
SELECT 
    *
FROM
    salespersons
WHERE
    hire_date > '2021-01-01';

-- 4. Display the names of customers who live in Mumbai.
SELECT 
    name
FROM
    customers
WHERE
    city = 'Mumbai';

-- 5. Show products that belong to the “Mobile” category.
SELECT 
    *
FROM
    products
WHERE
    category = 'Mobile';

-- 6. Get the details of orders placed in the month of March.
SELECT 
    *
FROM
    orders
WHERE
    MONTH(order_date) = 3;

-- 7. Retrieve customer name and phone number from Customers table.
SELECT 
    name, phone
FROM
    customers;

-- 8. Show all products with price greater than 50,000.
SELECT 
    product_name, price
FROM
    products
WHERE
    price > 50000;

-- 9. Count how many customers exist in the Customers table.
SELECT 
    COUNT(customer_id)
FROM
    customers;

-- 10. Display salesperson names in alphabetical order.
SELECT 
    name, salesperson_id
FROM
    salespersons
ORDER BY name ASC;

