SELECT * FROM employees;
SELECT *
FROM employees
ORDER BY BirthDate;
SELECT *
FROM employees
ORDER BY 4;
SELECT EmployeeID, LastName, BirthDate
FROM employees
ORDER BY BirthDate;
SELECT EmployeeID, LastName, BirthDate
FROM employees
ORDER BY 3;
SELECT * FROM products;
SELECT * FROM products
ORDER BY CategoryID;
SELECT * FROM products
ORDER BY CategoryID, Price;
SELECT * FROM products
ORDER BY 4, 6;

SELECT * FROM products
ORDER BY CategoryID ASC ; -- 오름차순 (생략가능)
SELECT * FROM products
ORDER BY CategoryID DESC; -- 내림차순
SELECT * FROM products
ORDER BY CategoryID DESC, Price;
SELECT * FROM products
ORDER BY CategoryID DESC, Price DESC;