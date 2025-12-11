/*HIGH (Advanced Level) Questions*/

-- 1. Show salesperson name and total sales amount they generated.
SELECT 
    s.name, SUM(p.price * od.quantity) AS TotalRevenue
FROM
    salespersons s
        JOIN
    orders o ON s.salesperson_id = o.salesperson_id
        JOIN
    orderdetails od ON od.order_id = o.order_id
        JOIN
    products p ON od.product_id = p.product_id
GROUP BY s.salesperson_id;


-- 2. List top 3 most sold products by quantity.
SELECT 
    p.product_name, SUM(od.quantity) AS Total_sold
FROM
    orderdetails od
        JOIN
    products p ON od.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_sold DESC
LIMIT 3;


-- 3. Find customers who have never placed an order.
SELECT 
    c.name
FROM
    customers c
        JOIN
    orders o ON o.customer_id = c.customer_id
WHERE
    o.order_id IS NULL;


-- 4. Display the total revenue for each month.
SELECT 
    month(order_date) AS month,
    SUM(p.price * od.quantity) AS Totalrevenue
FROM
    orders o
        JOIN
    orderdetails od ON o.order_id = od.order_id
        JOIN
    products p ON od.product_id = p.product_id
GROUP BY month;


-- 5. Show product category-wise total sales revenue.
SELECT 
    p.category, SUM(p.price * od.quantity) AS totalrevenue
FROM
    orderdetails od
        JOIN
    products p ON od.product_id = p.product_id
GROUP BY p.category;

-- 6. Detect duplicate customers based on name and phone number.
SELECT 
    name, phone, COUNT(*)
FROM
    customers
GROUP BY name , phone
HAVING COUNT(*) > 1;


-- 7. List all orders that include multiple products.
SELECT 
    order_id, COUNT(product_id) AS Productcount
FROM
    orderdetails
GROUP BY order_id
HAVING Productcount > 1;