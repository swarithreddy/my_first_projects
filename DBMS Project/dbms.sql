create database dbms;
use dbms;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    phno INT UNIQUE,
    gmail VARCHAR(100),
    address VARCHAR(255)
);
CREATE TABLE item (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100) UNIQUE,
    price INT,
    stock INT,
    rating INT
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    item_id INT,
    bill_date DATE,
    qty_sold INT,
    tot_amt INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (item_id) REFERENCES item(item_id)
);
CREATE TABLE membership (
    m_id INT PRIMARY KEY,
    user_id INT,
    valid_till DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE rating (
    user_id INT,
    staff_id INT,
    rating INT,
    time DATE,
    PRIMARY KEY (user_id, staff_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);
CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(100),
    dept VARCHAR(100),
    sal INT
);
show tables;
INSERT INTO users (user_id, user_name, phno, gmail, address) VALUES
(1, 'John Doe', 1234567890, 'john@example.com', '123 Main St'),
(2, 'Jane Smith', 1234567891, 'jane@example.com', '456 Maple St'),
(3, 'Alice Johnson', 1234567892, 'alice@example.com', '789 Oak St'),
(4, 'Bob Brown', 1234567893, 'bob@example.com', '101 Pine St'),
(5, 'Carol White', 1234567894, 'carol@example.com', '202 Birch St'),
(6, 'David Green', 1234567895, 'david@example.com', '303 Cedar St'),
(7, 'Eve Black', 1234567896, 'eve@example.com', '404 Elm St'),
(8, 'Frank Wilson', 1234567897, 'frank@example.com', '505 Spruce St'),
(9, 'Grace Taylor', 1234567898, 'grace@example.com', '606 Willow St'),
(10, 'Hank Martinez', 1234567899, 'hank@example.com', '707 Fir St'),
(11, 'Ivy Lewis', 1234567880, 'ivy@example.com', '808 Cypress St'),
(12, 'Jack Lee', 1234567881, 'jack@example.com', '909 Redwood St'),
(13, 'Kara Clark', 1234567882, 'kara@example.com', '1010 Sequoia St'),
(14, 'Liam Walker', 1234567883, 'liam@example.com', '1111 Magnolia St'),
(15, 'Mia Hill', 1234567884, 'mia@example.com', '1212 Palm St'),
(16, 'Noah Scott', 1234567885, 'noah@example.com', '1313 Bay St'),
(17, 'Olivia Adams', 1234567886, 'olivia@example.com', '1414 Hickory St'),
(18, 'Paul Evans', 1234567887, 'paul@example.com', '1515 Poplar St'),
(19, 'Quincy Harris', 1234567888, 'quincy@example.com', '1616 Cottonwood St'),
(20, 'Rachel Carter', 1234567889, 'rachel@example.com', '1717 Sycamore St');

INSERT INTO item (item_id, item_name, price, stock, rating) VALUES
(1, 'Laptop', 1000, 50, 4),
(2, 'Mouse', 20, 200, 5),
(3, 'Keyboard', 50, 150, 4),
(4, 'Monitor', 200, 75, 5),
(5, 'Printer', 150, 40, 3),
(6, 'Tablet', 300, 60, 4),
(7, 'Smartphone', 600, 80, 5),
(8, 'Headphones', 100, 120, 4),
(9, 'Speaker', 80, 90, 5),
(10, 'Camera', 500, 30, 4),
(11, 'Webcam', 70, 100, 4),
(12, 'Microphone', 60, 85, 3),
(13, 'Charger', 30, 150, 4),
(14, 'Power Bank', 40, 120, 4),
(15, 'USB Drive', 10, 300, 5),
(16, 'External HDD', 80, 70, 4),
(17, 'Router', 90, 45, 4),
(18, 'Projector', 400, 25, 3),
(19, 'Smartwatch', 200, 65, 5),
(20, 'Fitness Tracker', 100, 110, 4);

INSERT INTO orders (order_id, user_id, item_id, bill_date, qty_sold, tot_amt) VALUES
(1, 1, 1, '2024-10-01', 1, 1000),
(2, 2, 2, '2024-10-02', 2, 40),
(3, 3, 3, '2024-10-03', 3, 150),
(4, 4, 4, '2024-10-04', 1, 200),
(5, 5, 5, '2024-10-05', 1, 150),
(6, 6, 6, '2024-10-06', 2, 600),
(7, 7, 7, '2024-10-07', 1, 600),
(8, 8, 8, '2024-10-08', 3, 300),
(9, 9, 9, '2024-10-09', 1, 80),
(10, 10, 10, '2024-10-10', 1, 500),
(11, 11, 11, '2024-10-11', 2, 140),
(12, 12, 12, '2024-10-12', 1, 60),
(13, 13, 13, '2024-10-13', 3, 90),
(14, 14, 14, '2024-10-14', 1, 40),
(15, 15, 15, '2024-10-15', 4, 40),
(16, 16, 16, '2024-10-16', 2, 160),
(17, 17, 17, '2024-10-17', 1, 90),
(18, 18, 18, '2024-10-18', 1, 400),
(19, 19, 19, '2024-10-19', 3, 600),
(20, 20, 20, '2024-10-20', 2, 200);

INSERT INTO membership (m_id, user_id, valid_till) VALUES
(1, 1, '2025-10-01'),
(2, 2, '2025-10-02'),
(3, 3, '2025-10-03'),
(4, 4, '2025-10-04'),
(5, 5, '2025-10-05'),
(6, 6, '2025-10-06'),
(7, 7, '2025-10-07'),
(8, 8, '2025-10-08'),
(9, 9, '2025-10-09'),
(10, 10, '2025-10-10'),
(11, 11, '2025-10-11'),
(12, 12, '2025-10-12'),
(13, 13, '2025-10-13'),
(14, 14, '2025-10-14'),
(15, 15, '2025-10-15'),
(16, 16, '2025-10-16'),
(17, 17, '2025-10-17'),
(18, 18, '2025-10-18'),
(19, 19, '2025-10-19'),
(20, 20, '2025-10-20');

INSERT INTO rating (user_id, staff_id, rating, time) VALUES
(1, 1, 5, '2024-10-01'),
(2, 2, 4, '2024-10-02'),
(3, 3, 5, '2024-10-03'),
(4, 4, 4, '2024-10-04'),
(5, 5, 3, '2024-10-05'),
(6, 6, 5, '2024-10-06'),
(7, 7, 4, '2024-10-07'),
(8, 8, 5, '2024-10-08'),
(9, 9, 4, '2024-10-09'),
(10, 10, 3, '2024-10-10'),
(11, 11, 5, '2024-10-11'),
(12, 12, 4, '2024-10-12'),
(13, 13, 5, '2024-10-13'),
(14, 14, 3, '2024-10-14'),
(15, 15, 4, '2024-10-15'),
(16, 16, 5, '2024-10-16'),
(17, 17, 4, '2024-10-17'),
(18, 18, 5, '2024-10-18'),
(19, 19, 3, '2024-10-19'),
(20, 20, 4, '2024-10-20');

INSERT INTO staff (staff_id, staff_name, dept, sal) VALUES
(1, 'Alice', 'Sales', 50000),
(2, 'Bob', 'Support', 45000),
(3, 'Charlie', 'Development', 60000),
(4, 'Dana', 'Marketing', 55000),
(5, 'Eli', 'HR', 48000),
(6, 'Faith', 'Finance', 53000),
(7, 'Gabe', 'Support', 47000),
(8, 'Hank', 'Sales', 52000),
(9, 'Ivy', 'Development', 61000),
(10, 'Jack', 'Marketing', 54000),
(11, 'Kara', 'HR', 49000),
(12, 'Liam', 'Finance', 52000),
(13, 'Mia', 'Support', 47000),
(14, 'Nina', 'Sales', 53000),
(15, 'Owen', 'Development', 60000),
(16, 'Paul', 'Marketing', 56000),
(17, 'Quinn', 'HR', 50000),
(18, 'Ruth', 'Finance', 54000),
(19, 'Steve', 'Support', 46000),
(20, 'Tina', 'Sales', 52000);

-- Display data from users table
SELECT * FROM users;

-- Display data from item table
SELECT * FROM item;

-- Display data from orders table
SELECT * FROM orders;

-- Display data from membership table
SELECT * FROM membership;

-- Display data from rating table
SELECT * FROM rating;

-- Display data from staff table
SELECT * FROM staff;

-- 1
SELECT o.item_id, i.item_name, o.tot_amt, u.address
FROM orders o
JOIN item i ON o.item_id = i.item_id
JOIN users u ON o.user_id = u.user_id
WHERE o.user_id = 5;
-- 2
SELECT r.staff_id, s.staff_name, r.rating, r.time
FROM rating r
JOIN staff s ON r.staff_id = s.staff_id
WHERE r.user_id = 5;
-- 3
SELECT s.staff_id, s.staff_name, s.dept, s.sal
FROM staff s
JOIN rating r ON s.staff_id = r.staff_id
WHERE r.rating > 4;
-- 4
SELECT item_id, item_name, price
FROM item
WHERE stock > 0;
-- 5
SELECT o.item_id, i.item_name
FROM orders o
JOIN item i ON o.item_id = i.item_id
WHERE o.bill_date >= '2024-10-10';
-- 6
SELECT item_id, item_name
FROM item
WHERE rating > 4;
-- 7
SELECT staff_id, staff_name
FROM staff
WHERE sal > 50000;
-- 8
SELECT item_id, item_name
FROM item
WHERE item_name LIKE 'S%';
-- 9
CREATE VIEW staff_details_with_rating AS
SELECT s.staff_id, s.staff_name, s.dept, s.sal, r.rating
FROM staff s
JOIN rating r ON s.staff_id = r.staff_id;
-- 10
CREATE VIEW available_items AS
SELECT item_id, item_name, price, stock
FROM item
WHERE stock > 0;

SELECT * FROM staff_details_with_rating;

SELECT * FROM available_items;
