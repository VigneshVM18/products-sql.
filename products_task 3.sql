
CREATE TABLE PRODUCTS(
    id INTEGER PRIMARY KEY,
    name TEXT,
    category TEXT,
    price REAL,
    stock INTEGER
);

-- View all products
SELECT * FROM PRODUCTS;

-- Insert product 1
INSERT INTO PRODUCTS(id, name, category, price, stock)
VALUES (1, 'wireless mouse', 'electronics', 699.99, 40);

-- Insert product 2
INSERT INTO PRODUCTS(id, name, category, price, stock)
VALUES (2, 'office chair', 'furniture', 3399.40, 12);

-- Insert product 3
INSERT INTO PRODUCTS(id, name, category, price, stock)
VALUES (3, 'LED MONITOR', 'electronics', 9999.30, 30);

-- Insert product 4
INSERT INTO PRODUCTS(id, name, category, price, stock)
VALUES (4, 'NOTE BOOK', 'stationery', 25.30, 100);

-- Insert product 5
INSERT INTO PRODUCTS(id, name, category, price, stock)
VALUES (5, 'Bluetooth speaker', 'electronics', 1499.80, 10);

-- Select specific columns
SELECT name, price FROM PRODUCTS;

-- Filter rows using WHERE clause
SELECT * FROM PRODUCTS
WHERE price = 699.99;

-- Use AND/OR operator
SELECT * FROM PRODUCTS
WHERE CAST(category AS VARCHAR(MAX)) = 'electronics' AND price < 1000;

-- LIKE operator
SELECT * FROM PRODUCTS
WHERE name LIKE '%phone%';

-- Filtering with BETWEEN
SELECT * FROM PRODUCTS
WHERE price BETWEEN 500 AND 1500;

-- Sorting results ASC
SELECT * FROM PRODUCTS
ORDER BY price ASC;

-- Sorting results DESC
SELECT * FROM PRODUCTS
ORDER BY price DESC;

-- Limit number of results (SQL Server syntax)
SELECT TOP 2 * FROM PRODUCTS;

-- DISTINCT values
SELECT DISTINCT category FROM PRODUCTS;

-- Alter column type
ALTER TABLE PRODUCTS
ALTER COLUMN category VARCHAR(100);
