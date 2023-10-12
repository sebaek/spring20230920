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


-- UNIQUE : 해당 컬럼에 유일한 값만 허용
CREATE TABLE my_table14 (
  col1 INT,
  col2 INT UNIQUE -- 이 컬럼에 중복된 값을 넣을 수 없음
);
INSERT INTO my_table14 (col1, col2)
VALUE (11, 22); -- ok
INSERT INTO my_table14 (col1, col2)
VALUE (11, 33); -- ok
INSERT INTO my_table14 (col1, col2)
VALUE (11, 33); -- not ok
INSERT INTO my_table14 (col1)
VALUE (11);

SELECT * FROM my_table14;

CREATE TABLE my_table15 (
    col1 INT,
    col2 INT NOT NULL ,
    col3 INT UNIQUE ,
    col4 INT NOT NULL UNIQUE
);
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUE (11, 22, 33, 44); -- ok
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUE (11, 22, 33, 44); -- not ok
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUE (11, 22, 44, NULL); -- not ok
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUE (11, 22, 44, 55); -- ok

SELECT * FROM my_table15;

