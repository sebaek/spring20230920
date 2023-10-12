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
INSERT INTO my_table15 (col1, col3, col4)
VALUE (11, 44, 55); -- not ok

SELECT * FROM my_table15;

-- 예) my_table16 로 연습

-- DEFAULT : 기본값
CREATE TABLE my_table17 (
    col1 INT,
    col2 INT DEFAULT 100, -- 값을 넣지 않으면 100
    col3 VARCHAR(10) DEFAULT 'empty', -- 값을 넣지 않으면 'empty'
    col4 DATETIME DEFAULT NOW() -- 값을 넣지 않으면 현재 일시
);

INSERT INTO my_table17 (col1, col2, col3, col4)
VALUE (22, 33, 'son', '2023-11-11 22:23:24');
INSERT INTO my_table17 (col1)
VALUE (222);
INSERT INTO my_table17 (col1, col2, col3, col4)
VALUE (333, NULL, NULL, NULL);

SELECT * FROM my_table17;

CREATE TABLE my_table18 (
    col1 INT,
    col2 INT DEFAULT 300,
    col3 INT NOT NULL DEFAULT 500
);
INSERT INTO my_table18 (col1, col2, col3)
VALUE (3, NULL, NULL); -- not ok
INSERT INTO my_table18 (col1, col3)
VALUE (3, 222); -- ok
INSERT INTO my_table18 (col1)
VALUE (4);
SELECT * FROM my_table18;

CREATE TABLE my_table19 (
    col1 INT NOT NULL UNIQUE DEFAULT 100
);
