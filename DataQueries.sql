

Select * from EMPLOYEES;
Select * from PROJECTS;
SELECT * from MANAGERS;

-- Select query to get employee names and their corresponding project names (Here w are employing the join operation to undertand how to select employee names with their corresponding project names)
SELECT e.empname AS Employee_name, p.projectname AS Project_name
FROM EMPLOYEE e
JOIN MANAGERS m ON e.empid = m.empid
JOIN PROJECTS p ON m.projectid = p.projectid;

--Select query that joins employee salaries with manager salaries
SELECT e.salary AS Employee_salary, m.salaryman AS Managers_salary
FROM EMPLOYEES e
JOIN MANAGERS m ON e.empid = m.empid
JOIN PROJECTS ON m.projectid = p.projectid; --We use this line as the link between employees and managers is through product ids

--Comparison Operators
SELECT empname
FROM EMPLOYEES
WHERE salary > 30000 AND empid != 2;

--Filtering and Ordering
SELECT projectname
FROM PROJECTS
WHERE startdate > '2022-05-08'
ORDER BY startdate DESC;

--OFFSET (Retrieve one row starting from row 3)
SELECT * FROM MANAGERS LIMIT 3 OFFSET 1;
--(Skip the first 2 rows and retrieve the next 3)
SELECT * FROM MANAGERS LIMIT 2 OFFSET 3;

--Group by Query (Here we are selecting the dept of employees and counting the number of projects each employee is a part of before joining the projects and employees and then grouping them by dept//here I advise you to change the department values of some employees to match so that the result is clear to you)
SELECT e.dept, COUNT(p.projectid) AS ProjectCount
FROM EMPLOYEES e
JOIN PROJECTS p ON e.empid=p.empid
GROUP BY e.dept;

--Concatenate
Select CONCAT(e.empname, p.projectname, m.manname) AS EmployeeProjectInformation
FROM EMPLOYEE e
JOIN PROJECTS p ON p.empid=e.empid
JOIN MANAGERS m on p.empid=m.empid






