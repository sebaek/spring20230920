USE mydb1;

CREATE TABLE my_table42_a (
  col1 VARCHAR(1)
);
CREATE TABLE my_table43_b (
  col1 VARCHAR(1)
);

INSERT INTO my_table42_a (col1)
VALUES ('a'),
       ('b'),
       ('c');

INSERT INTO my_table43_b (col1)
VALUES ('b'),
       ('c'),
       ('d'),
       ('e');

SELECT *
FROM my_table42_a a JOIN my_table43_b b
     ON a.col1 = b.col1;
SELECT *
FROM my_table42_a a INNER JOIN my_table43_b b
     ON a.col1 = b.col1;

SELECT *
FROM my_table42_a a LEFT JOIN my_table43_b b
     ON a.col1 = b.col1;
SELECT *
FROM my_table42_a a LEFT OUTER JOIN my_table43_b b
      ON a.col1 = b.col1;

SELECT *
FROM my_table42_a a RIGHT JOIN my_table43_b b
     ON a.col1 = b.col1;
SELECT *
FROM my_table42_a a RIGHT OUTER JOIN my_table43_b b
   ON a.col1 = b.col1;


CREATE TABLE my_table44_a (
    col1 VARCHAR(1),
    name VARCHAR(10),
    address VARCHAR(10)
);
CREATE TABLE my_table45_b (
    col1 VARCHAR(1),
    product VARCHAR(10),
    country VARCHAR(10)
);

INSERT INTO my_table44_a (col1, name, address)
VALUES ('a', '흥민', '런던'),
       ('b', '강인', '파리'),
       ('c', '민재', '뮌헨');
INSERT INTO my_table45_b (col1, product, country)
VALUES ('b', '축구공', '한국'),
       ('c', '컴퓨터', '미국'),
       ('d', '전화기', '호주'),
       ('e', '햄버거', '영국');

SELECT *
FROM my_table44_a a JOIN my_table45_b b
   ON a.col1 = b.col1;
SELECT *
FROM my_table44_a a LEFT JOIN my_table45_b b
     ON a.col1 = b.col1;
SELECT *
FROM my_table44_a a RIGHT JOIN my_table45_b b
      ON a.col1 = b.col1;



