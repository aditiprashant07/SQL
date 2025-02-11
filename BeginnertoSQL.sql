-- Create table (create operation)
CREATE TABLE EMPLOYEEOFFICE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary INTEGER NOT NULL
);

-- Insert statements (insert operation)
INSERT INTO EMPLOYEEOFFICE VALUES (1, 'Clark', 'Sales', 45000);
INSERT INTO EMPLOYEEOFFICE VALUES (2, 'Dave', 'Accounting', 490000);
INSERT INTO EMPLOYEEOFFICE VALUES (3, 'Ava', 'Sales', 67000);
INSERT INTO EMPLOYEEOFFICE VALUES (4, 'Dana', 'HR', 46583);

-- Fetch all records (read operation)
SELECT * FROM EMPLOYEEOFFICE;

-- Fetch records where department is HR (read operation using where clause to filter particular columns)
SELECT * FROM EMPLOYEEOFFICE WHERE dept = 'HR';

-- Fetch records ordered by salary in ascending order (for descending order use DESC instead of ASC)
SELECT * FROM EMPLOYEEOFFICE ORDER BY salary ASC;

-- Fetch first two employee IDs (limit operation only fetches data from certain rows)
SELECT empId FROM EMPLOYEEOFFICE LIMIT 2;

-- Group by department and fetch employee count 
SELECT dept, COUNT(*) FROM EMPLOYEEOFFICE GROUP BY dept;

-- Insert a new record
INSERT INTO EMPLOYEEOFFICE VALUES (5, 'Ana', 'Product Development', 890000);

-- Update name where salary is 890000
UPDATE EMPLOYEEOFFICE
SET name = 'Anna'
WHERE salary = 890000;

-- Delete record where empId is 4
DELETE FROM EMPLOYEEOFFICE
WHERE empId = 4;
