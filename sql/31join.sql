USE w3schools;
SELECT DISTINCT CustomerID FROM orders ORDER BY 1 ;

SELECT CustomerName
FROM customers
WHERE CustomerID
          NOT IN (SELECT DISTINCT CustomerID FROM orders ORDER BY 1);

SELECT c.CustomerName
FROM customers c LEFT JOIN orders o
     ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL ;

