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

-- 피연산자가 NULL이면 결과는 항상 false
SELECT * FROM products
WHERE Price IS NULL; -- IS NULL : 컬럼의 값이 null인지 확인
SELECT * FROM products
WHERE NOT Price IS NULL ;
SELECT * FROM products
WHERE Price IS NOT NULL;


