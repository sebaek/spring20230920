USE w3schools;
-- aggregate function (집계함수, 집합함수, 그룹함수)
-- MAX, MIN, COUNT, SUM, AVG

SELECT * FROM products;

-- MAX 최대값
SELECT MAX(Price) FROM products;

SELECT * FROM products ORDER BY Price DESC ;
SELECT ProductName, MAX(Price) FROM products;

SELECT * FROM products
WHERE Price = (SELECT MAX(Price) FROM products);

-- MIN (최소값)
SELECT MIN(Price) FROM products;
SELECT * FROM products
WHERE Price = (SELECT MIN(Price) FROM products);

-- 예) 가장 어린 직원 명 조회
SELECT * FROM employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM employees);
-- 예) 가장 나이 많은 직원명 조회
SELECT *
FROM employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM employees);

-- COUNT : 갯수
SELECT * FROM employees;
SELECT COUNT(EmployeeID) FROM employees;
SELECT COUNT(LastName) FROM employees;
SELECT COUNT(FirstName) FROM employees;

--  NULL은 포함하지 않음
INSERT INTO employees (LastName)
VALUE ('흥민');
SELECT * FROM employees ORDER BY 1 DESC;

SELECT MIN(BirthDate) FROM employees;
SELECT MAX(BirthDate) FROM employees;

INSERT INTO products (ProductName)
VALUE ('커피');

SELECT * FROM products ORDER BY 1 DESC ;
SELECT MIN(Price) FROM products;
SELECT MIN(IFNULL(Price, 0)) FROM products;
SELECT *
FROM products
WHERE IFNULL(Price, 0) = (SELECT MIN(IFNULL(Price, 0)) FROM products);

-- SUM : 합
SELECT * FROM products;
SELECT SUM(Price) FROM products;

SELECT SUM(od.Quantity)
FROM orders o JOIN orderdetails od
  ON o.OrderID = od.OrderID
WHERE o.OrderDate = '1996-07-04';

-- 예) 96년 7월 4일 매출액 구하기
SELECT o.OrderDate, p.ProductName, p.Price, od.Quantity
FROM orders o JOIN orderdetails od
                   ON o.OrderID = od.OrderID
     JOIN products p ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

SELECT SUM(p.Price * od.Quantity) 매출액
FROM orders o
         JOIN orderdetails od ON o.OrderID = od.OrderID
         JOIN products p ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- AVG : 평균
SELECT AVG(Price) FROM products; -- 28.866364
SELECT SUM(Price) FROM products; -- 2222.71
SELECT COUNT(ProductID) FROM products; -- 78
SELECT COUNT(Price) FROM products; -- 77




