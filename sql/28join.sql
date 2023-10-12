USE w3schools;
SELECT * FROM products;
SELECT * FROM categories;

-- chais 상품의 카테고리명은?
SELECT CategoryID FROM products
WHERE ProductName = 'chais';

SELECT CategoryName FROM categories
WHERE CategoryID = 1;

-- JOIN : 두개의 테이블 결합
SELECT *
FROM categories, products;

SELECT COUNT(*)
FROM categories, products;

SELECT COUNT(*)
FROM categories JOIN products;

SELECT COUNT(*)
FROM categories; -- 8
SELECT COUNT(*)
FROM products; -- 77

--
CREATE TABLE table_a (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(20),
  category_id INT
);
CREATE TABLE table_b (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(20)
);
INSERT INTO table_b (category_name)
VALUES ('음료수'), ('반찬');
INSERT INTO table_a (product_name, category_id)
VALUES ('콜라', 1),
       ('사이다', 1),
       ('제육', 2),
       ('돈까스', 2),
       ('두부', 2);

SELECT *
FROM table_a JOIN table_b;

-- 두 테이블 결합하면
--  조회된 레코드 수는 A테이블 row * B테이블 row
--        컬럼 수는 A테이블 열 + B테이블 열

SELECT * FROM table_a;
SELECT *
FROM table_a JOIN table_b
WHERE product_name = '콜라'
  AND table_a.category_id = table_b.category_id;
-- 컬럼명이 하나의 테이블에만 있을 때 테이블명 생략 가능
-- 같은 컬럼명이 여러테이블에 있다면 테이블 명 작성

SELECT *
FROM table_a JOIN table_b
    ON table_a.category_id = table_b.category_id -- join 조건
WHERE product_name = '콜라';

SELECT ProductID, ProductName, CategoryName
FROM products JOIN categories
     ON products.CategoryID = categories.CategoryID
WHERE ProductName = 'chais';

SELECT ProductID, ProductName, CategoryName
FROM products p JOIN categories c
     ON p.CategoryID = c.CategoryID
WHERE ProductName = 'chais';

-- 예) chais 상품의 공급자명, 전화번호
-- 예) 