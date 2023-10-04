-- SELECT : 데이터 조회(읽기, 검색, 가져오기)
SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.products;

SELECT * FROM customers;
SELECT * FROM customers;

SELECT * FROM categories;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM shippers;
SELECT * FROM suppliers;


--
SELECT CustomerName  -- column 명 나열
FROM customers-- table 명 나열
;

SELECT CustomerID, CustomerName
FROM customers;
SELECT CustomerID, CustomerName, Country
FROM customers;
SELECT CustomerName, CustomerID, Country
FROM customers;

SELECT * -- 전체 컬럼
FROM customers;

-- 예1) 직원(employees)의 lastName, firstName, birthDate 조회
SELECT LastName, FirstName, BirthDate
FROM employees;
-- 예2) 상품(products)의 이름(productName), 단위(unit), 가격(price) 조회
SELECT ProductName, Unit, Price
FROM products;
-- 예3) 공급자(suppliers)의 이름(supplierName), 주소(address), 국가(country) 조회
SELECT SupplierName, Address, Country
FROM suppliers;
