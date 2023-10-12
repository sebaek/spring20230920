-- NULL 허용 여부
-- 유일한 값 여부
-- 기본값 지정
-- 값 체크

USE mydb1;

CREATE TABLE my_table13 (
  col1 INT NULL , -- null 허용
  col2 INT NOT NULL -- null 허용 안함
);

INSERT INTO my_table13 (col1, col2)
VALUE (33, 44); -- ok

INSERT INTO my_table13 (col2)
VALUE (55); -- ok

INSERT INTO my_table13 (col1)
VALUE (66); -- not ok

SELECT * FROM my_table13;

