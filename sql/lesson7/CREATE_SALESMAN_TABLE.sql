
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
