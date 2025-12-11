INSERT INTO Salespersons (name, email, phone, hire_date)
VALUES
('Rahul Sharma', 'rahul.sharma@sales.com', '9876543210', '2021-05-12'),
('Priya Mehta', 'priya.mehta@sales.com', '9823456789', '2020-09-23'),
('Arjun Patel', 'arjun.patel@sales.com', '9812345678', '2022-03-15'),
('Sneha Iyer', 'sneha.iyer@sales.com', '9898765432', '2019-11-10'),
('Vikram Rao', 'vikram.rao@sales.com', '9901234567', '2023-01-05');

select*from Salespersons;

INSERT INTO Customers (name, email, phone, city)
VALUES
('Amit Kumar', 'amit.kumar@gmail.com', '9876543210', 'Mumbai'),
('Neha Singh', 'neha.singh@gmail.com', '9823456789', 'Delhi'),
('Rajesh Gupta', 'rajesh.gupta@yahoo.com', '9812345678', 'Bangalore'),
('Priya Sharma', 'priya.sharma@gmail.com', '9898765432', 'Chennai'),
('Ankit Verma', 'ankit.verma@gmail.com', '9901234567', 'Kolkata'),
('Sneha Nair', 'sneha.nair@gmail.com', '9834567890', 'Hyderabad'),
('Ravi Patel', 'ravi.patel@gmail.com', '9876123450', 'Pune'),
('Kavita Joshi', 'kavita.joshi@gmail.com', '9821765432', 'Ahmedabad'),
('Manish Reddy', 'manish.reddy@gmail.com', '9890012345', 'Visakhapatnam'),
('Divya Mehta', 'divya.mehta@gmail.com', '9819876543', 'Jaipur'),
('Suresh Das', 'suresh.das@gmail.com', '9845012345', 'Lucknow'),
('Pooja Iyer', 'pooja.iyer@gmail.com', '9867543210', 'Coimbatore'),
('Vivek Chauhan', 'vivek.chauhan@gmail.com', '9823450987', 'Bhopal'),
('Ritika Jain', 'ritika.jain@gmail.com', '9887654321', 'Surat'),
('Gaurav Malhotra', 'gaurav.malhotra@gmail.com', '9812233445', 'Nagpur'),
('Tanya Kapoor', 'tanya.kapoor@gmail.com', '9876501234', 'Chandigarh'),
('Deepak Yadav', 'deepak.yadav@gmail.com', '9845678901', 'Indore'),
('Anjali Das', 'anjali.das@gmail.com', '9823567890', 'Kochi'),
('Harish Menon', 'harish.menon@gmail.com', '9811122233', 'Thiruvananthapuram'),
('Shreya Pillai', 'shreya.pillai@gmail.com', '9899988776', 'Mysuru');


INSERT INTO Products (product_name, category, price)
VALUES
('Samsung Galaxy S23', 'Mobile', 74999.00),
('iPhone 14', 'Mobile', 79999.00),
('OnePlus 11', 'Mobile', 58999.00),
('Redmi Note 12', 'Mobile', 18999.00),
('HP Pavilion 15', 'Laptop', 62999.00),
('Dell Inspiron 14', 'Laptop', 57999.00),
('Lenovo IdeaPad 3', 'Laptop', 49999.00),
('Asus ROG Strix', 'Laptop', 99999.00),
('Sony Bravia 43"', 'Television', 56999.00),
('LG OLED 55"', 'Television', 99999.00),
('Mi TV 40"', 'Television', 29999.00),
('Boat Rockerz 450', 'Headphones', 1999.00),
('Sony WH-1000XM4', 'Headphones', 24999.00),
('JBL Go 3', 'Speaker', 3499.00),
('Amazon Echo Dot', 'Smart Device', 4499.00),
('Apple Watch SE', 'Smartwatch', 29999.00),
('Samsung Galaxy Watch 5', 'Smartwatch', 27999.00),
('Sandisk 128GB Pendrive', 'Accessories', 1099.00),
('Logitech Wireless Mouse', 'Accessories', 1499.00),
('Zebronics Keyboard', 'Accessories', 999.00);

INSERT INTO Orders (customer_id, salesperson_id, order_date)
VALUES
(1, 2, '2024-01-15'),
(2, 1, '2024-01-17'),
(3, 5, '2024-01-20'),
(4, 4, '2024-02-05'),
(5, 3, '2024-02-10'),
(6, 2, '2024-02-14'),
(7, 1, '2024-02-20'),
(8, 3, '2024-03-02'),
(9, 4, '2024-03-08'),
(10, 2, '2024-03-11'),
(11, 5, '2024-03-18'),
(12, 3, '2024-04-02'),
(13, 1, '2024-04-08'),
(14, 2, '2024-04-14'),
(15, 4, '2024-04-20'),
(16, 5, '2024-05-02'),
(17, 3, '2024-05-06'),
(18, 2, '2024-05-10'),
(19, 1, '2024-05-15'),
(20, 5, '2024-05-20'),
(4, 2, '2024-05-25'),
(8, 4, '2024-05-29'),
(10, 3, '2024-06-02'),
(12, 5, '2024-06-07'),
(15, 1, '2024-06-12');

select*from orders;

INSERT INTO OrderDetails (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 12, 2),
(2, 2, 1),
(3, 5, 1),
(4, 9, 1),
(5, 3, 1),
(6, 10, 1),
(7, 4, 2),
(8, 7, 1),
(9, 11, 1),
(10, 15, 1),
(11, 14, 2),
(12, 16, 1),
(13, 13, 1),
(14, 8, 1),
(15, 18, 3),
(16, 19, 2),
(17, 6, 1),
(18, 17, 1),
(19, 20, 2),
(20, 1, 1),
(21, 2, 1),
(22, 5, 2),
(23, 9, 1),
(24, 10, 1),
(25, 3, 1);


SELECT COUNT(*) AS Total_Rows,
       SUM(quantity) AS Total_Quantity
FROM OrderDetails;

-- Find duplicate rows based on all columns
SELECT order_id, product_id, quantity, COUNT(*) AS count_occurrences
FROM OrderDetails
GROUP BY order_id, product_id, quantity
HAVING COUNT(*) > 1;

