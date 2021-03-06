
CREATE TABLE CUSTOMERS(
CUSTOMER_ID NUMBER,
CONSTRAINT CUSTOMER_PK PRIMARY KEY (CUSTOMER_ID),
COMPANY_NAME NVARCHAR2(50) UNIQUE,
CONTACT_NAME NVARCHAR2(50) NOT NULL,
CONTACT_TITLE NVARCHAR2(100) NOT NULL,
ADDRESS NVARCHAR2(50) NOT NULL,
CITY NVARCHAR2(50) NOT NULL,
REGION NVARCHAR2(50) NOT NULL,
POSTAL_CODE NUMBER NOT NULL,
COUNTRY NVARCHAR2(50) NOT NULL,
PHONE NUMBER NOT NULL,
FAX NUMBER NOT NULL
);