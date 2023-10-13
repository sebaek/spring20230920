USE w3schools;

SELECT Price FROM products WHERE ProductName = 'ipoh coffee';

SELECT ProductName, Price FROM products
WHERE Price > 46.00;

SELECT ProductName, Price FROM products
WHERE Price > (SELECT Price FROM products WHERE ProductName = 'ipoh coffee');

SELECT BirthDate FROM employees
WHERE LastName = 'Leverling';

SELECT LastName, FirstName, BirthDate FROM employees
WHERE BirthDate < '1963-08-30';

SELECT LastName, FirstName, BirthDate FROM employees
WHERE BirthDate < (SELECT BirthDate FROM employees
                   WHERE LastName = 'Leverling');

-- subquery
-- 행1개 열1개
SELECT BirthDate FROM employees
WHERE LastName = 'Leverling';

-- 행여러개 열1개
SELECT ShipperID FROM orders WHERE OrderDate = '1996-07-08';
SELECT CustomerName FROM customers WHERE Country = 'mexico';

-- 행여러개 열여러개
SELECT CustomerID, CustomerName FROM customers WHERE Country = 'mexico';


-- 행1개 열1개 예제
-- 'Tofu' 상품을 공급하는 공급자명
SELECT SupplierID FROM products WHERE ProductName = 'tofu';

SELECT SupplierID, SupplierName FROM suppliers
WHERE SupplierID = 6;

SELECT SupplierID, SupplierName FROM suppliers
WHERE SupplierID = (SELECT SupplierID FROM products WHERE ProductName = 'tofu');

SELECT p.SupplierID, s.SupplierName FROM suppliers s JOIN products p ON s.SupplierID = p.SupplierID
WHERE p.ProductName = 'tofu';

