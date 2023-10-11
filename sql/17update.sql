SELECT * FROM products;
SELECT * FROM products WHERE ProductID = 1;

UPDATE products
SET ProductName = '차이즈',
    Unit = '10 박스',
    Price = 36.00
WHERE ProductID = 1;

UPDATE products
SET ProductName = '두부김치'; -- where 꼭 쓸 것!!!!!!

-- 예)