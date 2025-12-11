
/*10 MODERATE (Medium Level) Questions*/

-- 1. Get all orders with customer name and order date.
  SELECT 
    o.order_id, c.name, o.order_date
FROM
    orders o
        JOIN
    customers c ON o.customer_id = c.customer_id;

-- 2. Show order_id, product_name, and quantity for each order.
SELECT 
    od.order_id, p.product_name, od.quantity
FROM
    orderdetails od
        JOIN
    products p ON od.product_id = p.product_id;
    
-- 3. Display total number of orders placed by each customer.
SELECT 
    c.name, COUNT(o.order_id) AS totalorders
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- 4. Find the total quantity sold for each product. 
SELECT 
    p.product_name, SUM(od.quantity) AS totalquantity
FROM
    orderdetails od
        JOIN
    products p ON od.product_id = p.product_id
GROUP BY p.product_id;

-- 5. List products priced between 20,000 and 60,000.
SELECT 
    *
FROM
    products
WHERE
    price BETWEEN 20000 AND 60000;

-- 6. Find customers whose name starts with ‘A’.
SELECT 
    *
FROM
    customers
WHERE
    name LIKE 'A%';

-- 7. Retrieve all orders handled by salesperson “Priya Mehta”.
SELECT 
    o.*
FROM
    orders o
        JOIN
    salespersons s ON o.salesperson_id = s.salesperson_id
WHERE
    s.name = 'Priya Mehta';
    
-- 8. Show maximum, minimum, and average price of products.
SELECT 
    MAX(price) AS maximum_price,
    MIN(price) AS minimum_price,
    AVG(price) AS average_price
FROM
    products;
 
 -- 9. Count how many products belong to each category.
SELECT 
    category, COUNT(*) AS total_products
FROM
    Products
GROUP BY category;

-- 10. Find customers who have placed at least one order.
SELECT DISTINCT
    c.name
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id;

