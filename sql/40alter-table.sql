USE mydb1;

CREATE TABLE my_table46 (
    col1 INT,
    col2 INT,
    col3 INT,
    col4 INT,
    col5 INT
);

-- NOT NULL 제약사항 추가
ALTER TABLE my_table46
MODIFY col1 INT NOT NULL ;

DESC my_table46;

-- NOT NULL 제약사항 삭제
ALTER TABLE my_table46
MODIFY col1 INT NULL;

-- 예) col2에 not null 제약사항 추가
-- 예) col2에 not null 제약사항 삭제
