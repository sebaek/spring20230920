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
-- 예) 가장 나이 많은 직원명 조회


