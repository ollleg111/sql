
CREATE TABLE CUSTOMER(
CUSTOMER_ID NUMBER PRIMARY KEY,
CUSTNAME NVARCHAR2(50) NOT NULL,
CITY NVARCHAR2(50) NOT NULL,
SALESMAN_ID NUMBER,
CONSTRAINT SALESMAN_FK FOREIGN KEY (SALESMAN_ID) REFERENCES SALESMAN(SALESMAN_ID)
COMMISSION NUMBER(*,2) DEFAULT '0.1'
);

INSERT INTO CUSTOMER VALUES(3002, 'AAAA', 'ATHENS', 5001);
INSERT INTO CUSTOMER VALUES(3005, 'BBBB', 'NY', 5002);
INSERT INTO CUSTOMER VALUES(3001, 'CCCC', 'KIEV', 5005);
INSERT INTO CUSTOMER VALUES(3004, 'DDDD', 'BERLIN', 5006);
INSERT INTO CUSTOMER VALUES(3009, 'EEEE', 'LONDON', 5003);
INSERT INTO CUSTOMER VALUES(3008, 'FFFF', 'PARIS', 5002);
INSERT INTO CUSTOMER VALUES(3007, 'GGGG', 'ATHENS', 5001);
INSERT INTO CUSTOMER VALUES(3006, 'HHHH', 'NY', 5007);
INSERT INTO CUSTOMER VALUES(3003, 'IIII', 'MINSK', null);