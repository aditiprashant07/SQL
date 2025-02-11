-- Create Products table
CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50) NOT NULL,
  category VARCHAR(50) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock_quantity INT NOT NULL
);

-- Insert sample data into Products
INSERT INTO Products VALUES (1, 'Laptop', 'Electronics', 1200.00, 10);
INSERT INTO Products VALUES (2, 'Smartphone', 'Electronics', 800.00, 15);
INSERT INTO Products VALUES (3, 'Tablet', 'Electronics', 400.00, 20);
INSERT INTO Products VALUES (4, 'Headphones', 'Accessories', 100.00, 50);
INSERT INTO Products VALUES (5, 'Desk Chair', 'Furniture', 250.00, 5);

-- Distinct operation to eliminate duplicates
SELECT DISTINCT category FROM Products;

-- WHERE clause to filter specific records
SELECT product_name, price
FROM Products
WHERE category = 'Furniture' AND price > 675;

-- IN operator filters using a list
SELECT product_id
FROM Products
WHERE category IN ('Electronics');

-- BETWEEN operator for range filtering
SELECT product_name
FROM Products
WHERE price BETWEEN 100 AND 200;

-- LIKE operator to match patterns
SELECT product_name 
FROM Products
WHERE product_name LIKE '%Phone%';

-- ORDER BY clause for sorting in descending order
SELECT product_name, price 
FROM Products
ORDER BY price DESC;


