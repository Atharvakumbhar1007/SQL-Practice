-- Create database
CREATE DATABASE shopdb;
USE shopdb;
DROP DATABASE shopdb;
CREATE DATABASE shopdb;
USE shopdb;


-- Customers Table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    city VARCHAR(50),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Products
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price > 0),
    stock INT NOT NULL CHECK (stock >= 0)
);

-- Employees
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(10,2) NOT NULL CHECK (salary > 0)
);

-- Orders
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT NOT NULL CHECK (quantity > 0),
    order_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    total DECIMAL(10,2) NOT NULL CHECK (total > 0),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Customers
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES
('Aisha','Khan','aisha@gmail.com','9891000001','Delhi','2024-04-12'),
('Siddharth','Rao','siddharth@gmail.com','9891000002','Bangalore','2024-04-15'),
('Meena','Verma','meena@gmail.com','9891000003','Jaipur','2024-04-18'),
('Aditya','Gupta','aditya@gmail.com','9891000004','Nagpur','2024-04-20'),
('Ritika','Bose','ritika@gmail.com','9891000005','Kolkata','2024-04-22'),
('Manoj','Yadav','manoj@gmail.com','9891000006','Lucknow','2024-04-25'),
('Divya','Nair','divya@gmail.com','9891000007','Chennai','2024-04-28'),
('Ishaan','Pillai','ishaan@gmail.com','9891000008','Kochi','2024-05-01'),
('Harsh','Kapoor','harsh@gmail.com','9891000009','Indore','2024-05-03'),
('Ananya','Mishra','ananya@gmail.com','9891000010','Bhopal','2024-05-05'),
('Vivek','Reddy','vivek@gmail.com','9891000011','Hyderabad','2024-05-07'),
('Tanvi','Shah','tanvi@gmail.com','9891000012','Rajkot','2024-05-09'),
('Kabir','Malhotra','kabir@gmail.com','9891000013','Delhi','2024-05-11'),
('Sneha','Kulkarni','sneha.k@gmail.com','9891000014','Pune','2024-05-13'),
('Arjun','Banerjee','arjun@gmail.com','9891000015','Kolkata','2024-05-15'),
('Rohit','Rana','rohit@gmail.com','9891000016','Chandigarh','2024-05-17'),
('Simran','Gill','simran@gmail.com','9891000017','Amritsar','2024-05-19'),
('Nikhil','Deshmukh','nikhil@gmail.com','9891000018','Nashik','2024-05-21'),
('Pallavi','Chopra','pallavi@gmail.com','9891000019','Thane','2024-05-23'),
('Aryan','Trivedi','aryan@gmail.com','9891000020','Ahmedabad','2024-05-25'),
('Neeraj','Saxena','neeraj@gmail.com','9891000021','Varanasi','2024-05-27'),
('Payal','Agarwal','payal@gmail.com','9891000022','Surat','2024-05-29'),
('Sameer','Joshi','sameer@gmail.com','9891000023','Mumbai','2024-05-30'),
('Kavya','Sharma','kavya@gmail.com','9891000024','Jaipur','2024-06-01'),
('Raj','Choudhary','rajc@gmail.com','9891000025','Delhi','2024-06-02');

-- Products
INSERT INTO products (name, category, price, stock) VALUES
('Smartphone','Electronics',18000,50),
('Headphones','Electronics',1500,200),
('Bluetooth Speaker','Electronics',3500,120),
('Tablet','Electronics',22000,30),
('Refrigerator','Appliances',40000,10),
('Microwave Oven','Appliances',12000,15),
('Washing Machine','Appliances',32000,12),
('Air Conditioner','Appliances',45000,8),
('Sofa','Furniture',25000,5),
('Dining Table','Furniture',18000,7),
('Wardrobe','Furniture',22000,6),
('Bookshelf','Furniture',8000,20),
('Shoes','Clothing',1999,150),
('Jeans','Clothing',1499,200),
('Jacket','Clothing',2999,100),
('Watch','Accessories',4999,80),
('Sunglasses','Accessories',2500,120),
('Backpack','Accessories',2200,60),
('Tennis Racket','Sports',3200,40),
('Football','Sports',1200,90),
('Gym Gloves','Sports',600,150),
('Cooker','Kitchen',2500,50),
('Dinner Set','Kitchen',5500,20),
('Vacuum Cleaner','Appliances',15000,10),
('Water Purifier','Appliances',17000,12);

-- Employees
INSERT INTO employees (first_name, last_name, role, hire_date, salary) VALUES
('Kunal','Rastogi','Sales','2023-05-10',28000),
('Nisha','Arora','Delivery','2023-06-12',21000),
('Rajiv','Bansal','Manager','2022-11-20',47000),
('Smita','Shinde','Support','2023-07-01',24000),
('Deepak','Nair','Accountant','2023-07-15',29000),
('Farhan','Ali','Sales','2023-08-10',31000),
('Geeta','Purohit','Delivery','2023-08-22',22500),
('Himanshu','Dutta','Manager','2022-10-05',46000),
('Ira','Menon','Support','2023-09-01',25500),
('Jatin','Verma','Accountant','2023-09-20',28500),
('Komal','Rai','Sales','2023-10-02',29500),
('Lakshya','Gupta','Delivery','2023-10-15',21500),
('Mehul','Shah','Manager','2022-09-18',48000),
('Nandini','Pillai','Support','2023-11-05',26000),
('Omkar','Kulkarni','Accountant','2023-11-25',27500),
('Pragya','Singh','Sales','2023-12-01',30500),
('Ravi','Khanna','Delivery','2023-12-15',22000),
('Sonia','Desai','Support','2024-01-05',24500),
('Tanya','Mishra','Sales','2024-01-20',30000),
('Uday','Reddy','Accountant','2024-02-02',28000),
('Varun','Patel','Delivery','2024-02-15',23000),
('Waseem','Iqbal','Support','2024-03-01',25000),
('Xavier','Fernandes','Manager','2022-08-25',49000),
('Yash','Chopra','Sales','2024-03-15',31500),
('Zoya','Ansari','Delivery','2024-04-01',22500);

-- Orders
INSERT INTO orders (customer_id, product_id, quantity, order_date, status, total) VALUES
(6,6,1,'2024-05-10','Delivered',12000),
(7,7,2,'2024-05-11','Shipped',7000),
(8,8,1,'2024-05-12','Pending',22000),
(9,9,1,'2024-05-13','Delivered',25000),
(10,10,1,'2024-05-14','Cancelled',18000),
(11,11,2,'2024-05-15','Delivered',44000),
(12,12,1,'2024-05-16','Shipped',8000),
(13,13,3,'2024-05-17','Delivered',5997),
(14,14,2,'2024-05-18','Pending',2998),
(15,15,1,'2024-05-19','Delivered',4999),
(16,16,1,'2024-05-20','Shipped',2500),
(17,17,2,'2024-05-21','Delivered',2400),
(18,18,1,'2024-05-22','Delivered',2200),
(19,19,1,'2024-05-23','Shipped',3200),
(20,20,1,'2024-05-24','Pending',1200),
(21,21,5,'2024-05-25','Delivered',3000),
(22,22,2,'2024-05-26','Cancelled',3000),
(23,23,1,'2024-05-27','Delivered',18000),
(24,24,1,'2024-05-28','Shipped',55000),
(25,25,3,'2024-05-29','Pending',7500),
(6,3,1,'2024-05-30','Delivered',799),
(7,2,2,'2024-05-31','Delivered',9000),
(8,4,1,'2024-06-01','Shipped',3200),
(9,5,2,'2024-06-02','Delivered',5000),
(10,1,1,'2024-06-03','Pending',55000);

-- 1) find th top 3 customers by total spending (join + group)
-- 2) Show products that have never been ordered (subquery + NOT IN)
-- 3) Find orders where the total is above the overall average order total (subquery + filter).
select *from orders
where total > (select avg(total) FROM orders);
-- 4) Display each customer’s most recent order (correlated subquery + join)
-- 5) Find employees earning more than the average salary within their own role (correlated subquery) .

select * from customers;
select * from employees;
select * from products;
select * from orders;

alter table orders
add employee_id int after customer_id;

-- add foreign key constraint 
alter table orders
add constraint foreign key (employee_id) 
references employees(employee_id);

show create table orders;



