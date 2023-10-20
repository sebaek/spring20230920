USE w3schools;
CREATE TABLE bank (
  name VARCHAR(10) PRIMARY KEY ,
  money INT NOT NULL DEFAULT 0
);
INSERT INTO bank (name, money)
VALUES ('son', 10000),
       ('kim', 10000);

-- 송금 업무 son -> kim 1000원 송금
UPDATE bank
SET money = money - 1000
WHERE name = 'son';
UPDATE bank
SET money = money + 1000
WHERE name = 'kim';

SELECT * FROM bank;


-- 되돌리기
ROLLBACK ;
-- 반영하기
COMMIT ;


