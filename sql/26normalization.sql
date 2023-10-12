-- 정규화 NORMALIZATION

-- 첫번째 정규화 (FIRST NORMAL FORM) 1NF
--   원자적 데이터를 가진 테이블, PK 컬럼이 있어야함

-- 책(369쪽)
-- 두번재 정규화 (SECOND NORMAL FORM) 2NF
--   1NF이고, 부분적 함수 의존이 없어야함

-- 부분적함수 의존(partial functional dependency)
-- 키가 아닌 컬럼의 값이 키 컬럼 일부에 종속되지 않아야한다.
-- 키의 일부가 변경되면 키가 아닌 컬럼이 변경되어야 하면 부분적 함수 의존

-- 책(374쪽)
-- 세번째 정규화 (THIRD NORMAL FORM) 3NF
--   2NF이고, 이행적 종속이 없어야 함

-- 이행적 종속 (transitive dependency) :
--   키가 아닌 컬럼이 키가 아닌 다른 컬럼에 의존
--   키가 아닌 컬럼이 변경되면 다른 키가 아닌 컬럼이 변경 되어야 할때

USE mydb1;
-- 입사지원자
-- id, 이름, 학교, 학교주소
CREATE TABLE my_table30_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    school VARCHAR(10),
    school_address VARCHAR(10)
);
INSERT INTO my_table30_person (name, school, school_address)
VALUES ('흥민', '서울대', '관악'),
       ('강인', '고려대', '안암'),
       ('민재', '연세대', '신촌'),
       ('지성', '고려대', '안암'),
       ('범근', '연세대', '신촌');

SELECT * FROM my_table30_person;

CREATE TABLE my_table31_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    school VARCHAR(10)
);
CREATE TABLE my_table32_school (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    address VARCHAR(10)
);

INSERT INTO my_table31_person (name, school)
VALUES ('흥민', '서울대'),
       ('강인', '고려대'),
       ('민재', '연세대'),
       ('지성', '고려대'),
       ('범근', '연세대');

INSERT INTO my_table32_school (name, address)
VALUES ('seoul univ', '관악'),
       ('korea univ', '안암'),
       ('연세대', '신촌');

CREATE TABLE my_table33_person (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10),
   school_id INT -- 한테이블의 컬럼이 다른 테이블을 참조하면 pk를 사용해야함
);
CREATE TABLE my_table34_school (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    address VARCHAR(10)
);
INSERT INTO my_table33_person (name, school_id)
VALUES ('흥민', 1),
       ('강인', 2),
       ('민재', 1);
INSERT INTO my_table34_school (name, address)
VALUES ('서울대', '관악'),
       ('연세대', '신촌'),
       ('고려대', '안암');
SELECT * FROM my_table34_school;

INSERT INTO my_table33_person (name, school_id)
VALUES ('지성', 4); --

CREATE TABLE my_table35_person (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10),
   school_id INT REFERENCES my_table36_school(id)
    -- 한테이블의 컬럼이 다른 테이블을 참조하면 pk를 사용해야함
    -- 외래키(foreign key) 제약사항
);
CREATE TABLE my_table36_school (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10),
   address VARCHAR(10)
);
INSERT INTO my_table35_person (name, school_id)
VALUES ('흥민', 1),
       ('강인', 2),
       ('민재', 1);
INSERT INTO my_table36_school (name, address)
VALUES ('서울대', '관악'),
       ('연세대', '신촌'),
       ('고려대', '안암');
INSERT INTO my_table35_person (name, school_id)
VALUES ('지성', 4);

DELETE FROM my_table36_school WHERE id = 1;
DELETE FROM my_table36_school WHERE id = 3;

DESC my_table35_person;
SHOW CREATE TABLE my_table35_person;
CREATE TABLE `my_table35_person` (
                                     `id` int(11) NOT NULL AUTO_INCREMENT,
                                     `name` varchar(10) DEFAULT NULL,
                                     `school_id` int(11) DEFAULT NULL,
                                     PRIMARY KEY (`id`),
                                     KEY `school_id` (`school_id`),
                                     CONSTRAINT `my_table35_person_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `my_table36_school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 외래키, 참조키, FK (foreign key)


