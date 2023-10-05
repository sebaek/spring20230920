-- between

SELECT * FROM products
WHERE Price >= 10 AND Price <= 13;
SELECT * FROM products
WHERE Price BETWEEN 10 AND 13; -- 값 포함됨
SELECT * FROM products
WHERE Price >= 10 AND Price < 13;
SELECT * FROM products
WHERE Price BETWEEN 10 AND 12.99;

SELECT * FROM products
WHERE Price BETWEEN '10' AND '13';

SELECT * FROM customers
WHERE CustomerName BETWEEN 'a' AND 'b';
SELECT * FROM orders
WHERE OrderDate BETWEEN '1996-01-01' AND '1996-12-31';

-- 예) 가격이 30~40(포함) 사이인 상품 조회
SELECT * FROM products
WHERE Price BETWEEN 30 AND 40;
-- 예) 1998년 2월에 주문한 주문조회
SELECT * FROM orders
WHERE OrderDate BETWEEN '1998-02-01' AND '1998-02-29';
-- 예) 1958년 9월 태어난 직원 조회
SELECT * FROM employees
WHERE BirthDate BETWEEN '1958-09-01' AND '1958-09-30';


