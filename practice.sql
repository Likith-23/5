CREATE TABLE employees(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees(employee_id, first_name, last_name, department, salary)
VALUES 
(1, 'John', 'Doe', 'Sales', 5000),
(2, 'Bruce', 'Wayne', 'Marketing', 34000),
(4, 'John', 'Wick', 'Sales', 6000),
(3, 'Chill', 'guy', 'Engeineering', 5000),
(5, 'Spider', 'Man', 'Purchases', 9000),
(6, 'John', 'Doe', 'Marketing', 5000);
SELECT * FROM employees;
SELECT * FROM employees WHERE department = 'Sales';
SELECT * FROM employees ORDER BY salary;
SELECT * FROM employees ORDER BY salary DESC;
SELECT department, avg(salary) AS average_salary
FROM employees
GROUP BY department;
SELECT department, avg(salary) AS average_salary
FROM employees
GROUP BY department
HAVING avg(salary) > 10000;
CREATE TABLE departments(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
INSERT INTO departments(department_id, department_name)
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(4, 'Purchases'),
(3, 'Engineering');

SELECT e.first_name, e.last_name, d.department_name FROM employees e
INNER JOIN departments d ON e.department = d.department_name;