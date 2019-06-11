CREATE TABLE AUTHOR(
ID NUMBER,
CONSTRAINT AUTHOR_PK PRIMARY KEY (ID),
--CONSTRAINT CONST-NAME CONSTRAINT TYPE(COLUMN NAME)
NAME NVARCHAR2(50) NOT NULL,
LAST_NAME NVARCHAR2(50) UNIQUE,
COUNTRY NVARCHAR2(50) DEFAULT 'ENGLAND',
AGE NUMBER DEFAULT 0,
ARTICLES_COUNT NUMBER CHECK(ARTICLES_COUNT >10),
CONSTRAINT CHECK(COUNTRY != 'CHINA' AND LAST_NAME != 'TEST_LN')
);

CREATE TABLE HOTEL (
ID NUMBER,
CONSTRAINT TABLE_ID PRIMARY KEY(ID),
COUNTRY NVARCHAR2(50) DEFAULT 'N/A',
CITY NVARCHAR2(50) NOT NULL,
STREET NVARCHAR2(50),
CONSTRAINT CHECK_COUNT CHECK (COUNTRY !='Romania' AND COUNTRY != 'Belgium' AND COUNTRY != 'China' AND COUNTRY != 'Ukraine')
);

CREATE TABLE ORDER (
ID NUMBER,
CONSTRAINT ORD_ID PRIMARY KEY (ID),
USER_ID NVARCHAR2(50) UNIQUE,
ROOM_ID NVARCHAR2(50) UNIQUE,
DATE_FROM TIMESTAMP,
DATE_TO TIMESTAMP,
MONEY_PAID NUMERIC(15,2),
CONSTRAINT ID_CHECK CHECK (ID < 10000)
);

--05/06/2019

--GROUP BY ------------------------------------------------------------------------------------------------------------

--SELECT -column 1, -column2 FROM TABLE table_name
--WHERE conditions
--GROUP BY column_name

SELECT PRODUCT_NAME FROM ORDERS
GROUP BY PRODUCT_NAME;
--GROUP_BY ВЫВОДИТ ТОЛЬКО УНИКАЛЬНЫЕ ЗНАЧЕНИЯ ИЗ СООТВЕТСТВУЮЩЕЙ КОЛОНКИ

SELECT ID, PRODUCT_NAME FROM ORDERS
GROUP BY PRODUCT_NAME;
--ERROR

SELECT PRODUCT_NAME, SUM(ID) FROM ORDERS
GROUP BY PRODUCT_NAME;
--ПРОСУММИРОВАЛИСЬ ID ТЕХ КОТОРЫЕ ПОВТОРЯЮТСЯ ПО ИМЕНИ ПРОДУКТА

SELECT PRODUCT_NAME, SUM(PRICE) FROM ORDERS
GROUP BY PRODUCT_NAME;

SELECT PRODUCT_NAME, AVG(PRICE) FROM ORDERS
GROUP BY PRODUCT_NAME;
--СРЕДНЕЕ ПО ЦЕНЕ В ПОВТОРЯЮЩИХСЯ НАЗВАНИЯХ ИМЕНИ ПРОДУКТА

SELECT PRODUCT_NAME, MIN(PRICE) FROM ORDERS
GROUP BY PRODUCT_NAME;

SELECT PRODUCT_NAME, MAX(PRICE) FROM ORDERS
GROUP BY PRODUCT_NAME;
--MIN and MAX В КОЛОНКЕ В ПОВТОРЯЮЩЕМСЯ НАЗВАНИИ ПРОДУКТА

--ORDER BY ------------------------------------------------------------------------------------------------------------

SELECT PRODUCT_NAME, PRICE FROM ORDERS
ORDER BY PRODUCT_NAME ASC;
--СОРТИРОВКА ПО ВОЗРАСТАНИЮ ПО ПОЛЯМ PRODUCT_NAME И PRICE

SELECT PRODUCT_NAME, PRICE FROM ORDERS
ORDER BY PRODUCT_NAME DESC;
-- -||- ПО УБЫВАНИЮ

SELECT * FROM ORDERS
ORDER BY PRODUCT_NAME DESC;

SELECT * FROM ORDERS
ORDER BY PRICE ASC;

SELECT PRODUCT_NAME, SUM(PRICE) FROM ORDERS;
--ERROR В ОДНОМ ЗАПРОСЕ ДВА ВЫВОДА ЗНАЧЕНИЙ ИЗ РАЗНЫХ КОЛОНКАХ (НАДО РАЗБИТЬ НА ДВА)

SELECT SUM(PRICE) FROM ORDERS;

SELECT AVG(PRICE) FROM ORDERS;

SELECT COUNT(PRICE) FROM ORDERS;

SELECT COUNT(*) FROM ORDERS;

SELECT COUNT(*) FROM ORDERS
WHERE PRICE >10;
--GROUP BY PRODUCT_NAME
--ORDER BY PRICE_DESC;

--EXISTS---------------------------------------------------------------------------------------------------------------

SELECT * FROM ORDERS
WHERE EXISTS (SELECT * FROM PRODUCT WHERE MANUFACTURER_NAME = ORDERS.PRODUCT_NAME);
--ДЕЛАЕМ СРАВЕНИНЕ МЕЖДУ КОЛОНКАМИ В РАЗНЫХ ТАБЛИЦАХ ПО ИМЕНИ И ВЫВОДИМ СОВПАДАЮЩИЕ ИМЕНА ИЗ
--ПЕРВОЙ ТАБЛИЦЫ
--В ДАННОМ СЛУЧАЕ В ТАБЛИЦЕ ORDERS ИЗ КОЛОНКИ PRODUCT_NAME СОВПАДЕНИЕ С ИМЕНЕМ ИЗ КОЛОНКИ MANUFACTURER_NAME В ТАБЛИЦЕ
--PRODUCT

SELECT * FROM ORDERS
WHERE EXISTS (SELECT * FROM PRODUCT WHERE COST_PRICE < ORDERS.PRICE);

SELECT * FROM ORDERS
WHERE EXISTS (SELECT * FROM PRODUCT WHERE MANUFACTURER_NAME = ORDERS.PRODUCT_NAME AND COST_PRICE < ORDERS.PRICE);

--BETWEEN -------------------------------------------------------------------------------------------------------------

SELECT * FROM ORDERS
WHERE PRICE BETWEEN 1 AND 100;

SELECT * FROM ORDERS
WHERE PRICE PRICE > 1 AND PRICE < 100;
--НЕКРАСИВАЯ ЗАМЕНА

SELECT * FROM ORDERS
WHERE DATE_ORDERED BETWEEN TO_DATE('01-MAY-2019') AND TO_DATE('04-MAY-2019');
--ОСНОВНОЕ ИСПОЛЬЗОВАНИЕ ДЛЯ ФОРМИРОВАНИЯ ВЫБОРКИ ДЛЯ ДАТ

--LIKE ----------------------------------------------------------------------------------------------------------------

SELECT * FROM ORDERS WHERE PRODUCT_NAME LIKE 'A%';
--ВЫВОДИТ ВСЕ ДАННЫЕ ИЗ КОЛОНКИ PRODUCT_NAME НАЧИНАЮЩИЕСЯ С БУКВЫ 'А'

SELECT * FROM ORDERS WHERE PRODUCT_NAME LIKE '%1';
--ВЫВОДИТ ВСЕ ДАННЫЕ ИЗ КОЛОНКИ PRODUCT_NAME ЗАКАНЧИВАЮЩИЕСЯ НА '1'

SELECT * FROM ORDERS WHERE PRODUCT_NAME LIKE '%test%';
--СОДЕРЖИТ КАКИЕТО СИМВОЛЫ В НАЗВАНИИ ПРОДУКТА - test НАПРИМЕР
--ДАЖЕ ЕСЛИ ДАННЫЕ НАХОДЯТСЯ ВНУТРИ СЛОВА ИЛИ КОМБИНАЦИИ СИМВОЛОВ


