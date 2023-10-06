SELECT * FROM employees;
SELECT EmployeeID, LastName FROM employees;

-- AS : 컬럼명(테이블명) 변경
SELECT EmployeeID AS id,
       LastName AS name
FROM employees;

SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) AS fullName
FROM employees;

-- AS 생략 가능
SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) fullName
FROM employees;

-- backtick `` 으로 키워드나 특수문자 사용 가능
SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) `full name`
FROM employees;

-- 예) 공급자의 이름(supplierName), 주소(address, city, country)
--     전화번호(phone -> phone number) 조회
-- supplierName, address, `phone number`
SELECT supplierName,
       CONCAT(Address, ' ', City, ' ', Country) address,
       Phone `phone number`
FROM suppliers;

SELECT * FROM products;
SELECT * FROM categories;

SELECT products.ProductName,
       categories.CategoryName
FROM products JOIN categories
    ON products.CategoryID = categories.CategoryID;

SELECT p.ProductName,
       c.CategoryName
FROM products AS p JOIN categories AS c -- AS 생략 가능
    ON p.CategoryID = c.CategoryID;
