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
