-- IN : 하나라도 같으면

SELECT * FROM customers
WHERE Country = 'UK' OR Country = 'spain' OR Country = 'italy';
SELECT *
FROM customers
WHERE Country IN ('UK', 'spain', 'italy');

-- 예) 카테고리 3, 4 에 속한 상품들
-- 예) 1996년 7월 4일, 5일에 주문한 주문들
-- 예) london이나 madrid, sevilla에 있는 고객들

