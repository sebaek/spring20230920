SELECT * FROM customers;
SELECT CustomerName, City, Country FROM customers
WHERE Country = 'spain';
SELECT CustomerName, City, Country FROM customers
WHERE City = 'Madrid';
SELECT CustomerName, City, Country FROM customers
WHERE City = 'Madrid' AND Country = 'Spain';
SELECT CustomerName, City, Country FROM customers
WHERE City = 'Madrid' AND Country != 'Spain';
SELECT CustomerName, City, Country FROM customers
WHERE City != 'Madrid' AND Country = 'Spain';
SELECT CustomerName, City, Country FROM customers
WHERE City != 'Madrid' AND Country != 'Spain';

SELECT CustomerName, City, Country FROM customers
WHERE NOT (City = 'Madrid' AND Country = 'Spain');

SELECT CustomerName, City, Country FROM customers
WHERE City != 'Madrid' OR Country != 'Spain';

SELECT CustomerName, City, Country FROM customers
WHERE City = 'Madrid';
SELECT CustomerName, City, Country FROM customers
WHERE Country = 'Spain';
SELECT CustomerName, City, Country FROM customers
WHERE City = 'Madrid' OR Country = 'Spain';
SELECT CustomerName, City, Country FROM  customers
WHERE Country = 'Spain' OR Country = 'UK';