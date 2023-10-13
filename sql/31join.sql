USE w3schools;
SELECT DISTINCT CustomerID FROM orders ORDER BY 1 ;

SELECT CustomerName
FROM customers
WHERE CustomerID
          NOT IN (SELECT DISTINCT CustomerID FROM orders ORDER BY 1);

SELECT c.CustomerName
FROM customers c LEFT JOIN orders o
     ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL ;

SELECT e.LastName, e.FirstName
FROM employees e LEFT JOIN orders o
    ON e.EmployeeID = o.EmployeeID
WHERE o.EmployeeID IS NULL ;

SELECT DISTINCT EmployeeID FROM orders ORDER BY 1;
SELECT COUNT(*) FROM employees;

INSERT INTO employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUE ('손', '흥민', '2000-01-01', '사진1', '축구선수');