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
-- 예) 2번 카테고리에서 가장 저렴한 상품 조회
