-- QUICKBUY SQL PRACTICE PROJECT
-- Beginner-to-early-intermediate PostgreSQL dataset
-- Fictional retail data. Run this setup script in your PostgreSQL query tool.

DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    payment_method VARCHAR(30),
    order_status VARCHAR(20)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);

INSERT INTO customers VALUES
(1, 'Amaka Nwosu', 'Lagos', '2026-01-04'),
(2, 'Tunde Bakare', 'Ibadan', '2026-01-08'),
(3, 'Zainab Musa', 'Abuja', '2026-01-12'),
(4, 'Chidi Okafor', 'Enugu', '2026-01-15'),
(5, 'Grace Eze', 'Lagos', '2026-01-20'),
(6, 'David Adeyemi', 'Onitsha', '2026-02-02'),
(7, 'Fatima Bello', 'Abuja', '2026-02-06'),
(8, 'Emeka Obi', 'Port Harcourt', '2026-02-11'),
(9, 'Sarah James', 'Ibadan', '2026-02-18'),
(10, 'Musa Ibrahim', 'Kano', '2026-02-24'),
(11, 'Ngozi Okeke', 'Lagos', '2026-03-01'),
(12, 'Peter Johnson', 'Enugu', '2026-03-05');

INSERT INTO products VALUES
(1, 'Blender', 'Home Appliances', 52000.00),
(2, 'Microwave', 'Home Appliances', 145000.00),
(3, 'Bedsheet Set', 'Home & Living', 28000.00),
(4, 'Air Fryer', 'Home Appliances', 98000.00),
(5, 'Wall Clock', 'Home & Living', 18000.00),
(6, 'Rice Cooker', 'Home Appliances', 65000.00),
(7, 'Bath Towel Set', 'Home & Living', 22000.00),
(8, 'Electric Kettle', 'Home Appliances', 35000.00);

INSERT INTO orders VALUES
(1001, 1, '2026-02-01', 'Transfer', 'Completed'),
(1002, 2, '2026-02-03', 'Card', 'Completed'),
(1003, 3, '2026-02-05', 'Transfer', 'Completed'),
(1004, 1, '2026-02-09', 'Cash', 'Completed'),
(1005, 4, '2026-02-12', 'Transfer', 'Cancelled'),
(1006, 5, '2026-02-15', 'Card', 'Completed'),
(1007, 6, '2026-02-18', 'Transfer', 'Completed'),
(1008, 7, '2026-02-20', 'Cash', 'Completed'),
(1009, 8, '2026-02-23', 'Card', 'Returned'),
(1010, 9, '2026-03-01', 'Transfer', 'Completed'),
(1011, 10, '2026-03-04', 'Card', 'Completed'),
(1012, 11, '2026-03-07', 'Transfer', 'Completed'),
(1013, 12, '2026-03-10', 'Cash', 'Completed'),
(1014, 3, '2026-03-12', 'Card', 'Completed'),
(1015, 5, '2026-03-15', 'Transfer', 'Completed'),
(1016, 2, '2026-03-18', 'Cash', 'Completed'),
(1017, 7, '2026-03-21', 'Transfer', 'Completed'),
(1018, 8, '2026-03-24', 'Card', 'Completed'),
(1019, 4, '2026-03-26', 'Transfer', 'Completed'),
(1020, 1, '2026-03-29', 'Card', 'Completed');

INSERT INTO order_items VALUES
(1, 1001, 1, 1),
(2, 1001, 8, 2),
(3, 1002, 2, 1),
(4, 1002, 5, 1),
(5, 1003, 4, 1),
(6, 1003, 7, 2),
(7, 1004, 3, 1),
(8, 1004, 5, 2),
(9, 1005, 6, 1),
(10, 1006, 2, 1),
(11, 1006, 8, 1),
(12, 1007, 1, 2),
(13, 1007, 7, 1),
(14, 1008, 3, 2),
(15, 1008, 5, 1),
(16, 1009, 4, 1),
(17, 1009, 6, 1),
(18, 1010, 8, 3),
(19, 1010, 7, 2),
(20, 1011, 2, 1),
(21, 1011, 1, 1),
(22, 1012, 5, 3),
(23, 1012, 3, 1),
(24, 1013, 6, 1),
(25, 1013, 8, 2),
(26, 1014, 4, 1),
(27, 1014, 2, 1),
(28, 1015, 7, 3),
(29, 1015, 3, 1),
(30, 1016, 1, 1),
(31, 1016, 5, 2),
(32, 1017, 6, 1),
(33, 1017, 8, 1),
(34, 1018, 2, 1),
(35, 1018, 7, 1),
(36, 1019, 3, 2),
(37, 1019, 5, 2),
(38, 1020, 4, 1),
(39, 1020, 1, 1);
