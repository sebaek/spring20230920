-- LIMIT 조회 레코드(행, row) 제한
SELECT * FROM customers;
SELECT * FROM customers
LIMIT 3;
SELECT * FROM employees
LIMIT 2;

SELECT * FROM employees
ORDER BY BirthDate
LIMIT 2;

SELECT * FROM products
ORDER BY Price DESC
LIMIT 10;

-- 예) 가장 어린 3명의 직원 조회
SELECT * FROM employees
ORDER BY BirthDate DESC
LIMIT 3;

-- 예) 2번 카테고리에서 가장 저렴한 상품 조회
SELECT * FROM products
WHERE CategoryID = 2
ORDER BY Price
LIMIT 1;

-- LIMIT n : n 개
-- LIMIT n, m : n부터 m개 (n은 0번부터)
SELECT ProductName, Price
FROM products
ORDER BY Price
LIMIT 3;
SELECT ProductName, Price
FROM products
ORDER BY Price
LIMIT 0, 3;
SELECT ProductName, Price
FROM products
ORDER BY Price
LIMIT 1, 3;
SELECT ProductName, Price
FROM products
ORDER BY Price
LIMIT 2, 3;
SELECT ProductName, Price
FROM products
ORDER BY Price
LIMIT 3, 3;