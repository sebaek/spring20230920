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

-- 예) my_table6 만들기
-- age 컬럼 정수 타입
-- score 컬럼 총길이 7 소숫점 이하 길이 2인 숫자형
CREATE TABLE my_table6 (
    age INT,
    score DEC(7, 2)
);
INSERT INTO my_table6 (age, score)
VALUE (300, 2342.33);
INSERT INTO my_table6 (age, score)
VALUE (300, 2342.334);
SELECT * FROM my_table6;

-- 문자열 : VARCHAR
CREATE TABLE my_table7 (
    col1 VARCHAR(1),
    col2 VARCHAR(2),
    col3 VARCHAR(16000)
);
CREATE TABLE my_table8 (
    col1 VARCHAR(8000),
    col2 VARCHAR(8000)
);

INSERT INTO my_table7 (col1)
VALUE ('a');
INSERT INTO my_table7 (col1)
    VALUE ('가');

INSERT INTO my_table7 (col1)
VALUE ('ab');

INSERT INTO my_table7 (col2)
VALUE ('a');
INSERT INTO my_table7 (col2)
VALUE ('ab');
INSERT INTO my_table7 (col2)
    VALUE ('가');
INSERT INTO my_table7 (col2)
    VALUE ('나다');
INSERT INTO my_table7 (col2)
VALUE ('abc');
INSERT INTO my_table7 (col2)
VALUE ('가나다');
INSERT INTO my_table7 (col2)
VALUE ('🎈🎆');

SELECT * FROM my_table7;


-- 예) my_table9 만들기
-- name 문자열 최대길이 100자
-- 주소 문자열 최대길이 200자
-- 전화번호 문자열 최대길이 100자
CREATE TABLE my_table9 (
    name VARCHAR(100),
    address VARCHAR(200),
    phone_number VARCHAR(100)
);

-- 날짜
CREATE TABLE my_table10 (
    col1 DATE
);
INSERT INTO my_table10 (col1)
VALUE ('2000-01-01');

INSERT INTO my_table10 (col1)
VALUE ('1500-03-01');
INSERT INTO my_table10 (col1)
VALUE (NOW());

SELECT * FROM my_table10;

-- 날짜시간 : DATETIME
CREATE TABLE my_table11 (
    col1 DATETIME
);
INSERT INTO my_table11 (col1)
VALUE ('2002-12-30 14:05:12');
INSERT INTO my_table11 (col1)
VALUE ('1002-12-30 14:05:12');
INSERT INTO my_table11 (col1)
VALUE ('9992-12-30 14:05:12');

INSERT INTO my_table11 (col1)
VALUE (NOW());
SELECT * FROM my_table11;

SELECT NOW();




