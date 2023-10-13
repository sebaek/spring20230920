USE w3schools;

SELECT *
FROM employees e1 JOIN employees e2;

SELECT e1.LastName, e1.BirthDate
FROM employees e1 JOIN employees e2
WHERE e1.BirthDate < e2.BirthDate
   AND e2.LastName = 'Leverling';

-- 예) 'Ipoh Coffee'보다 비싼 상품명 조회
SELECT ProductID, ProductName, Price FROM products
WHERE ProductName = 'Ipoh Coffee';
SELECT ProductID, ProductName, Price FROM products
WHERE Price > 46.00;

SELECT p1.ProductID, p1.ProductName, p1.Price
FROM products p1 JOIN products p2
WHERE p1.Price > p2.Price
  AND p2.ProductName = 'Ipoh Coffee';