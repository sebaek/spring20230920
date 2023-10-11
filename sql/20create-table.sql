USE mydb1;

-- 테이블 만들기
CREATE TABLE 테이블명 (
  컬럼명 컬럼타입,
  컬럼명 컬럼타입
);

-- 테이블명, 컬럼명 작성 관습
-- lower_snake_case (*)
-- UPPER_SNAKE_CASE
-- UpperCamelCase
-- lowerCamelCase

CREATE TABLE my_table1 (
  col_name1 varchar(100),
  col_name2 varchar(100),
  col_name3 varchar(100)
);

SELECT * FROM my_table1;
INSERT INTO my_table1 (col_name1, col_name2, col_name3)
VALUE ('민재', '흥민', '강인');

-- 예) my_table2 만들기, 컬럼은 4개, 모든 컬럼 타입 varchar(10)
CREATE TABLE my_table2 (
  age varchar(10),
  address varchar(10),
  phone_number varchar(10),
  country varchar(10)
);
SELECT * FROM my_table2;
INSERT INTO my_table2 (age, address, phone_number, country)
    VALUE ('30', 'seoul', '010', 'korea');





