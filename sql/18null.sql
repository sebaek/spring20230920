SELECT * FROM customers ORDER BY 1 DESC;
INSERT INTO customers (CustomerName)
VALUE ('흥민');
INSERT INTO customers (CustomerName, ContactName)
VALUE ('강인', '');
INSERT INTO customers (CustomerName, ContactName)
VALUE ('민재', null);
SELECT ProductID, ProductName, Price FROM products ORDER BY 1 DESC ;
INSERT INTO products (ProductName, Price)
VALUE ('피자', 0.00);
INSERT INTO products (ProductName, Price)
    VALUE ('햄버거', null);

-- NULL : 값이 없음
SELECT * FROM products
WHERE Price = 0.00
ORDER BY 1 DESC;
SELECT * FROM products
WHERE Price != 0.00
ORDER BY 1 DESC;

-- 비교연산시 피연산자가 NULL이면 결과는 항상 false
SELECT * FROM products
WHERE Price IS NULL; -- IS NULL : 컬럼의 값이 null인지 확인
SELECT * FROM products
WHERE NOT Price IS NULL ;
SELECT * FROM products
WHERE Price IS NOT NULL;

SELECT ProductName, Price * 100
FROM products; -- 산술연산시 null 피연산자이면 결과 null

SELECT ProductName, Price
FROM products
ORDER BY ProductID DESC;

SELECT ProductName, IFNULL(Price, 0.00)
FROM products
ORDER BY ProductID DESC ;

SELECT * FROM customers ORDER BY 1 DESC;

-- 예) contactName이 null인 고객들 조회
SELECT * FROM customers
WHERE ContactName IS NULL;
-- 예) address가 null인 고객들 조회
SELECT * FROM customers
WHERE  Address IS NULL ;
-- 예) 고객들 조회 (customerName, country 컬럼만), 단 country가 null이면 '없음' 표시
SELECT CustomerName, IFNULL(Country, '없음') Country
FROM customers;