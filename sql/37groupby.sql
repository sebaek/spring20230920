-- GROUP BY : 그룹함수 사용 시 그룹함수의 범위(그룹) 지정

SELECT COUNT(DISTINCT CategoryID) FROM products;

SELECT MAX(Price)FROM products;
SELECT CategoryId, MAX(Price)
FROM products
GROUP BY CategoryID;

SELECT CategoryID, MIN(Price)
FROM products
GROUP BY CategoryID;

SELECT CategoryID, MAX(Price), MIN(Price)
FROM products
GROUP BY CategoryID;

SELECT CategoryID, MAX(Price) maxPrice, MIN(Price) minPrice
FROM products
GROUP BY CategoryID
ORDER BY maxPrice DESC;

SELECT o.OrderDate, SUM(p.Price * od.Quantity) AS 매출액
FROM products p
         JOIN orderdetails od
              ON p.ProductID = od.ProductID
         JOIN orders o
              ON od.OrderID = o.OrderID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;


