SELECT * FROM customers
WHERE CustomerName = 'Around the Horn';
SELECT * FROM customers
WHERE CustomerName LIKE '%the%';
SELECT * FROM customers
WHERE CustomerName LIKE '%ch%';

-- LIKE : 검색
-- %, _ 기호와 같이
SELECT * FROM customers
WHERE CustomerName LIKE 'ch%'; -- % : 0개 이상의 문자
SELECT * FROM customers
WHERE CustomerName LIKE '%er'; -- % : 0개 이상의 문자
SELECT * FROM customers
WHERE CustomerName LIKE '%er%'; -- % : 0개 이상의 문자

SELECT * FROM employees
WHERE FirstName LIKE '_____'; -- _ : 1개의 문자 아무거나

SELECT * FROM employees
WHERE LastName LIKE '____'; -- _ : 1개의 문자 아무거나

SELECT * FROM employees
WHERE LastName LIKE '_e%';


