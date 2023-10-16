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




