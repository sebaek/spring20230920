-- 수형(정수, 실수)
-- 문자열
-- 날짜 (날짜시간)

-- 정수 : int
CREATE TABLE my_table3 (
    col1 int
);
INSERT INTO my_table3 (col1)
VALUE (298743);
INSERT INTO my_table3 (col1)
VALUE ('12300');
INSERT INTO my_table3 (col1)
VALUE ('two'); -- 안됨
SELECT * FROM my_table3;

-- 실수 : DEC
CREATE TABLE my_table4 (
    col1 DEC -- DEC(10, 0)
);
INSERT INTO my_table4 (col1)
VALUE (3.14);
SELECT * FROM my_table4;

CREATE TABLE my_table5 (
    col1 DEC(5, 3) -- 총길이 5, 소숫점이하 길이 3
);
INSERT INTO my_table5 (col1)
VALUE (10.123);
INSERT INTO my_table5 (col1)
VALUE (10.1234);
INSERT INTO my_table5 (col1)
VALUE (123.456);

SELECT * FROM my_table5;








