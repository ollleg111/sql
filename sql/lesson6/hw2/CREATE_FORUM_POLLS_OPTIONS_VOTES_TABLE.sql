
CREATE TABLE FORUM_POLLS_OPTIONS_VOTES(
POOL_ID NUMBER,
CONSTRAINT POOLS_PK PRIMARY KEY (POOL_ID),
USER_ID NUMBER,
CONSTRAINT USERS_FK FOREIGN KEY(USER_ID) REFERENCES USERS(USER_ID),
OPTION_ID NUMBER,
CONSTRAINT OPTIONS_FK FOREIGN KEY(OPTION_ID) REFERENCES FORUM_POOLS_OPTIONS(OPTION_ID),
VOTE_DATE TIMESTAMP NOT NULL,
IP NVARCHAR2(20)NOT NULL
);