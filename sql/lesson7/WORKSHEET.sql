CREATE TABLE SALESMAN(
SALESMAN_ID NUMBER PRIMARY KEY,
NAME NVARCHAR2(50) NOT NULL,
CITY NVARCHAR2(50) NOT NULL,
COMMISSION NUMBER(*,2) DEFAULT '0.1'
);

INSERT INTO SALESMAN VALUES(5001, 'Alex', 'NY', 0.15);
INSERT INTO SALESMAN VALUES(5002, 'Bob', 'PARIS', 0.12);
INSERT INTO SALESMAN VALUES(5003, 'Sergey', 'LONDON', 0.1);
INSERT INTO SALESMAN VALUES(5004, 'Juju', 'PARIS', 0.14);
INSERT INTO SALESMAN VALUES(5005, 'Zorro', 'KIEV', 0.14);
INSERT INTO SALESMAN VALUES(5006, 'Igor', 'MOSKOW', 0.12);
INSERT INTO SALESMAN VALUES(5007, 'Usha', 'NY', 0.13);
INSERT INTO SALESMAN VALUES(5008, 'Katya', 'LONDON', 0.15);
INSERT INTO SALESMAN VALUES(5009, 'Orel', 'ATHENS', 0.1);

CREATE TABLE CUSTOMER(
CUSTOMER_ID NUMBER PRIMARY KEY,
CUSTNAME NVARCHAR2(50) NOT NULL,
CITY NVARCHAR2(50) NOT NULL,
SALESMAN_ID NUMBER,
CONSTRAINT SALESMAN_FK FOREIGN KEY (SALESMAN_ID) REFERENCES SALESMAN(SALESMAN_ID)
);

INSERT INTO CUSTOMER VALUES(3002, 'Babay', 'ATHENS', 5001);
INSERT INTO CUSTOMER VALUES(3005, 'Coco', 'NY', 5002);
INSERT INTO CUSTOMER VALUES(3001, 'Soil', 'KIEV', 5005);
INSERT INTO CUSTOMER VALUES(3004, 'DedPool', 'BERLIN', 5006);
INSERT INTO CUSTOMER VALUES(3009, 'Egor', 'LONDON', 5003);
INSERT INTO CUSTOMER VALUES(3008, 'Fedor', 'PARIS', 5002);
INSERT INTO CUSTOMER VALUES(3007, 'Gogi', 'ATHENS', 5001);
INSERT INTO CUSTOMER VALUES(3006, 'Herb', 'NY', 5007);
INSERT INTO CUSTOMER VALUES(3003, 'Karl', 'MINSK', null);

CREATE TABLE DEAL(
ID NUMBER PRIMARY KEY,
CUSTOMER_ID NUMBER,
CONSTRAINT CUSTOMER_FK FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
AMOUNT INT NOT NULL,
DEAL_DATE TIMESTAMP NOT NULL
);

INSERT INTO DEAL VALUES(101, 3001, 9000, TO_DATE('2018/06/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(102, 3002, 12000, TO_DATE('2018/05/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(103, 3003, 10001, TO_DATE('2018/08/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(104, 3004, 12000, TO_DATE('2018/04/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(105, 3005, 9000, TO_DATE('2018/07/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(106, 3001, 8000, TO_DATE('2018/08/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(107, 3006, 9000, TO_dATE('2018/06/01', 'yyyy/mm/dd'));

SELECT * FROM SALESMAN;

SELECT * FROM SALESMAN, CUSTOMER;

SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME FROM SALESMAN, CUSTOMER;

SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN, CUSTOMER
WHERE SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID;

SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID;

SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;

SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME, SALESMAN.CITY
FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;

SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME, SALESMAN.CITY
FROM SALESMAN
LEFT JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;

SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME, SALESMAN.CITY
FROM SALESMAN
RIGHT JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;

SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME, SALESMAN.CITY
FROM SALESMAN
FULL JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;

SELECT CUSTOMER.CUSTNAME,  CUSTOMER.CITY, SALESMAN.NAME, SALESMAN.CITY
FROM SALESMAN
JOIN CUSTOMER ON CUSTOMER.SALESMAN_ID = SALESMAN.SALESMAN_ID
JOIN DEAL ON CUSTOMER.CUSTOMER_ID = DEAL.CUSTOMER_ID AND DEAL.AMOUNT>10000;

SELECT CUSTOMER.CUSTNAME
FROM CUSTOMER
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID AND
DEAL_DATE BETWEEN TO_DATE('2017/01/01', 'yyyy/mm/dd') AND TO_DATE('2018/12/31', 'yyyy/mm/dd');

SELECT SALESMAN.NAME
FROM SALESMAN
JOIN DEAL ON  DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID AND
DEAL_DATE BETWEEN TO_DATE('2017/08/01', 'yyyy/mm/dd') AND TO_DATE('2017/08/31', 'yyyy/mm/dd');


--------------------------
SELECT SALESMAN.NAME FROM DEAL
JOIN CUSTOMER ON  CUSTOMER.CUSTOMER_ID = DEAL.CUSTOMER_ID
AND
DEAL_DATE BETWEEN TO_DATE('2017/08/01', 'yyyy/mm/dd') AND TO_DATE('2017/08/31', 'yyyy/mm/dd')
--AND
--AMOUNT=(SELECT SUM(AMOUNT) FROM DEAL)
JOIN SALESMAN ON CUSTOMER.SALESMAN_ID=SALESMAN.SALESMAN_ID;

-------24.06.2019

SELECT SALESMAN.NAME FROM DEAL
JOIN CUSTOMER ON  CUSTOMER.CUSTOMER_ID = DEAL.CUSTOMER_ID
AND
DEAL_DATE BETWEEN TO_DATE('2017/08/01', 'yyyy/mm/dd') AND TO_DATE('2017/08/31', 'yyyy/mm/dd')
JOIN SALESMAN ON CUSTOMER.SALESMAN_ID=SALESMAN.SALESMAN_ID;

SELECT CUSTOMER.CUSTNAME
FROM CUSTOMER
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID AND
DEAL_DATE BETWEEN TO_DATE('2017/01/01', 'yyyy/mm/dd') AND TO_DATE('2018/12/31', 'yyyy/mm/dd');

SELECT CUSTNAME,  CUSTOMER.CITY, SALESMAN.NAME, SALESMAN.CITY, AMOUNT
FROM SALESMAN
JOIN CUSTOMER ON CUSTOMER.SALESMAN_ID = SALESMAN.SALESMAN_ID
JOIN DEAL ON CUSTOMER.CUSTOMER_ID = DEAL.CUSTOMER_ID AND
DEAL.AMOUNT>10000;

INSERT INTO DEAL VALUES(101, 3001, 9000, TO_DATE('2016/06/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(102, 3002, 12000, TO_DATE('2015/05/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(103, 3003, 10001, TO_DATE('2016/08/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(104, 3004, 12000, TO_DATE('2015/04/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(105, 3005, 9000, TO_DATE('2017/07/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(106, 3001, 8000, TO_DATE('2014/08/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(107, 3006, 9000, TO_dATE('2015/06/01', 'yyyy/mm/dd'));

INSERT INTO DEAL VALUES(108, 3001, 9000, TO_DATE('2018/07/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(109, 3001, 8000, TO_DATE('2018/08/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(110, 3001, 9000, TO_dATE('2018/06/01', 'yyyy/mm/dd'));

INSERT INTO DEAL VALUES(111, 3005, 9000, TO_DATE('2017/08/03', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(112, 3003, 10000, TO_DATE('2017/08/03', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(113, 3001, 12000, TO_DATE('2017/08/03', 'yyyy/mm/dd'));

DELETE FROM DEAL;

SELECT * FROM ORDERS
WHERE EXISTS (SELECT * FROM PRODUCT WHERE MANUFACTURER_NAME = ORDERS.PRODUCT_NAME);

SELECT SUM(PRICE) FROM ORDERS;

SELECT SUM(AMOUNT) FROM DEAL;

SELECT CUSTOMER_ID, MAX(AMOUNT) FROM DEAL GROUP
BY CUSTOMER_ID;

SELECT SALESMAN.NAME
FROM SALESMAN
JOIN DEAL ON  DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID;


SELECT CUSTOMER.CUSTNAME
FROM CUSTOMER
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID AND
DEAL_DATE BETWEEN TO_DATE('2017/01/01', 'yyyy/mm/dd') AND TO_DATE('2018/12/31', 'yyyy/mm/dd');

SELECT CUSTOMER_ID, AMOUNT FROM DEAL;

SELECT CUSTOMER_ID, SUM(AMOUNT)
FROM DEAL
GROUP BY CUSTOMER_ID;

SELECT CUSTOMER_ID, SUM(AMOUNT)
FROM DEAL
GROUP BY CUSTOMER_ID;

SELECT CUSTOMER_ID, MAX(AMOUNT)
FROM DEAL
GROUP BY CUSTOMER_ID;

SELECT NAME,  CUSTNAME
FROM SALESMAN, CUSTOMER
WHERE SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID;

SELECT SUM(AMOUNT)
FROM DEAL;

SELECT MAX(AMOUNT)
FROM DEAL;

SELECT MAX(AMOUNT)
FROM DEAL
WHERE AMOUNT IN (SELECT SUM(AMOUNT) FROM DEAL GROUP BY CUSTOMER_ID);

SELECT SUM(AMOUNT) FROM DEAL GROUP BY CUSTOMER_ID;

SELECT CUSTOMER_ID, AMOUNT
FROM DEAL
WHERE AMOUNT = MAX(AMOUNT);

------------------------------------------
SELECT NAME FROM
(SELECT SUM(DEAL.AMOUNT) as RES, SALESMAN.NAME FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID
WHERE to_char(DEAL_DATE, 'MM') = 12 AND to_char(DEAL_DATE,'YYYY') = 2018
GROUP BY SALESMAN.NAME)
WHERE RES =
(SELECT MAX(res) FROM (SELECT SUM(DEAL.AMOUNT) as res, SALESMAN.NAME FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID
WHERE to_char(DEAL_DATE, 'MM') = 12 AND to_char(DEAL_DATE,'YYYY') = 2018
GROUP BY SALESMAN.NAME));

SELECT SUM(DEAL.AMOUNT) as RES, SALESMAN.NAME FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID
WHERE to_char(DEAL_DATE, 'MM') = 12 AND to_char(DEAL_DATE,'YYYY') = 2018
GROUP BY SALESMAN.NAME;


SELECT MAX(res) FROM (SELECT SUM(DEAL.AMOUNT) as res, SALESMAN.NAME FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID
WHERE to_char(DEAL_DATE, 'MM') = 12 AND to_char(DEAL_DATE,'YYYY') = 2018
GROUP BY SALESMAN.NAME)

INSERT INTO DEAL VALUES(101, 3001, 9000, TO_DATE('2016/06/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(102, 3002, 12000, TO_DATE('2015/05/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(103, 3003, 10001, TO_DATE('2016/08/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(104, 3004, 12000, TO_DATE('2015/04/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(105, 3005, 9000, TO_DATE('2017/07/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(106, 3001, 8000, TO_DATE('2014/08/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(107, 3006, 9000, TO_dATE('2015/06/01', 'yyyy/mm/dd'));

INSERT INTO DEAL VALUES(108, 3001, 9000, TO_DATE('2018/07/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(109, 3001, 8000, TO_DATE('2018/08/01', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(110, 3001, 9000, TO_dATE('2018/06/01', 'yyyy/mm/dd'));

INSERT INTO DEAL VALUES(111, 3005, 9000, TO_DATE('2017/08/03', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(112, 3003, 10000, TO_DATE('2017/08/03', 'yyyy/mm/dd'));
INSERT INTO DEAL VALUES(113, 3001, 12000, TO_DATE('2017/08/03', 'yyyy/mm/dd'));



------------26/06/2019-----------------------------------------------------------------------------------
--1--
SELECT CUSTOMER.CUSTNAME,  CUSTOMER.CITY, SALESMAN.NAME, SALESMAN.CITY
FROM SALESMAN
JOIN CUSTOMER ON CUSTOMER.SALESMAN_ID = SALESMAN.SALESMAN_ID
JOIN DEAL ON CUSTOMER.CUSTOMER_ID = DEAL.CUSTOMER_ID AND DEAL.AMOUNT>10000;
--2--
SELECT CUSTOMER.CUSTNAME
FROM CUSTOMER
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID AND
DEAL_DATE BETWEEN TO_DATE('2017/01/01', 'yyyy/mm/dd') AND TO_DATE('2018/12/31', 'yyyy/mm/dd');
--3--
SELECT NAME FROM
(SELECT SUM(DEAL.AMOUNT) as RES, SALESMAN.NAME FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID
WHERE TO_CHAR(DEAL_DATE, 'MM') = 08 AND TO_CHAR(DEAL_DATE,'YYYY') = 2017
GROUP BY SALESMAN.NAME)
WHERE RES =
(SELECT MAX(RES) FROM (SELECT SUM(DEAL.AMOUNT) as RES, SALESMAN.NAME FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID
JOIN DEAL ON DEAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID
WHERE TO_CHAR(DEAL_DATE, 'MM') = 08 AND TO_CHAR(DEAL_DATE,'YYYY') = 2017
GROUP BY SALESMAN.NAME));





































