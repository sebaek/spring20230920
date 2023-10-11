SELECT * FROM products;
SELECT * FROM products WHERE ProductID = 1;

UPDATE products
SET ProductName = '차이즈',
    Unit = '10 박스',
    Price = 36.00
WHERE ProductID = 1;

UPDATE products
SET ProductName = '두부김치'; -- where 꼭 쓸 것!!!!!!

-- 예) 11번 고객의 이름 수정하기
SELECT * FROM customers
WHERE CustomerID = 11;

UPDATE customers
SET
    CustomerName = '손흥민'
WHERE CustomerID = 11;
-- 예) 5번 직원이 notes 변경하기
SELECT * FROM employees
WHERE EmployeeID = 5;

UPDATE employees
SET notes = '새로운 설명들!@!@!@'
WHERE EmployeeID = 5;
-- 예) 1번 공급자의 전화번호, 주소 변경하기
SELECT * FROM suppliers
WHERE SupplierID = 1;

UPDATE suppliers
SET
    Phone = '01099998888',
    Address = '신촌'
WHERE SupplierID = 1;

--
SELECT * FROM products
         WHERE CategoryID = 1;

UPDATE products
SET Price = Price * 2
WHERE CategoryID = 1;