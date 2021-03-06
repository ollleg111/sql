CREATE TABLE MOVIE_STAT (
MOVIE_ID NUMBER UNIQUE,
RATING FLOAT(2),
CONSTRAINT RATING_CHECK CHECK(RATING > 1 AND RATING < 10),
DOMESTIC_SALES NUMBER,
INTERNATIONAL_SALES NUMBER
);

INSERT INTO MOVIE_STAT VALUES (1010, 6.3 , 1111, 2222);
INSERT INTO MOVIE_STAT VALUES (1011, 7.3 , 5000, 12222);
INSERT INTO MOVIE_STAT VALUES (1012, 6.4 , 5611, 10022);
INSERT INTO MOVIE_STAT VALUES (1013, 5.1 , 2111, 42562);
INSERT INTO MOVIE_STAT VALUES (1014, 3.5 , 4110, 20222);
INSERT INTO MOVIE_STAT VALUES (1015, 9.3 , 5115, 32222);
INSERT INTO MOVIE_STAT VALUES (1016, 9.9 , 6146, 42272);
INSERT INTO MOVIE_STAT VALUES (1017, 5.2 , 7134, 56222);

SELECT DIRECTOR, DOMESTIC_SALES, INTERNATIONAL_SALES FROM MOVIE, MOVIE_STAT WHERE MOVIE.ID = MOVIE_STAT.MOVIE_ID;

SELECT INTERNATIONAL_SALES FROM MOVIE_STAT
ORDER BY INTERNATIONAL_SALES DESC;

SELECT MAX(DOMESTIC_SALES + INTERNATIONAL_SALES) FROM MOVIE_STAT;

