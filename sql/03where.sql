SELECT CustomerName, Address, City, Country FROM customers;

-- WHERE : 레코드 선택(솎아내기)
SELECT * FROM customers WHERE CustomerID = 1;
SELECT * FROM customers WHERE CustomerID = 2;
SELECT * FROM customers WHERE Country = 'USA';
SELECT *
FROM customers
WHERE Country = 'Mexico';
SELECT * FROM customers WHERE Country = 'mexico';
SELECT * FROM customers WHERE Country = 'MEXICO'; -- 대소문자 구분 안함
SELECT * FROM customers WHERE Country = 'France'; -- 문자열은 ''
SELECT * FROM customers WHERE Country = 'France'; -- 문자열은 ''
SELECT * FROM customers WHERE CustomerID = 3; -- 수형식은 따옴표 없이
SELECT * FROM customers WHERE CustomerID = '3'; -- 써도 됨

-- 예) 영국(UK)에 사는 고객들 조회
-- 예) 1번 카테고리에 속한 상품(Products)들 조회
-- 예) Osaka에 있는 공급자들 조회

                                                


