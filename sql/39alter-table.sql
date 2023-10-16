USE w3schools;

-- ALTER TABLE : 테이블 수정

-- 컬럼 추가, 변경, 삭제

-- 제약 사항 변경
-- NOT NULL, UNIQUE, PRIMARY KEY, DEFAULT, FOREIGN KEY


-- 컬럼 추가
ALTER TABLE products
ADD COLUMN col1 INT;
ALTER TABLE products
ADD COLUMN col2 VARCHAR(10);

ALTER TABLE products
ADD COLUMN col3 VARCHAR(10) AFTER ProductName;

ALTER TABLE products
ADD COLUMN col4 VARCHAR(10) FIRST ;

ALTER TABLE products
ADD COLUMN col5 INT
    NOT NULL DEFAULT 1 REFERENCES employees(EmployeeID);

DESC products;


-- 예) 직원 테이블에 salary 컬럼 마지막에 추가
-- data type은 dec(10, 2), null 허용안하고, 기본값은 0.00
ALTER TABLE employees
ADD COLUMN salary DEC(10, 2) NOT NULL DEFAULT 0.00;
DESC employees;

-- 컬럼 삭제
ALTER TABLE products
DROP COLUMN col1;

-- 예) products 테이블에서 col2 컬럼 삭제
ALTER TABLE products
DROP COLUMN col2;
DESC products;

-- 컬럼 변경 (type)
ALTER TABLE products
MODIFY COLUMN col3 INT;

INSERT INTO products (col4)
VALUE ('pizza');
SELECT * FROM products ORDER BY productID DESC;

ALTER TABLE products
MODIFY COLUMN col4 INT; -- x

ALTER TABLE products
MODIFY COLUMN col4 VARCHAR(20);

ALTER TABLE products
MODIFY COLUMN col4 VARCHAR(10);

ALTER TABLE products
MODIFY COLUMN col4 VARCHAR(3);