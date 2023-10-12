USE mydb1;
-- PRIMARY KEY (주키, 기본키, pk)
CREATE TABLE my_table27 (
    id INT PRIMARY KEY ,
    name VARCHAR(20)
);
CREATE TABLE my_table28 (
    id INT,
    name VARCHAR(10),
    PRIMARY KEY (id)
);
CREATE TABLE my_table29 (
    name VARCHAR(10),
    birth DATE,
    PRIMARY KEY (name, birth)
);

CREATE TABLE my_table30 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10)
);

INSERT INTO my_table30 (name)
VALUE ('son');
INSERT INTO my_table30 (name)
VALUE ('lee');
INSERT INTO my_table30 (name)
VALUE ('kim');

SELECT * FROM my_table30;
DELETE FROM my_table30
WHERE id = 4;
