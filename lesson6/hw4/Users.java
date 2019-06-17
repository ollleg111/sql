package lesson6.hw4;

import java.util.Date;

public class Users extends CreateData {

    /*CREATE TABLE USERS(
USER_ID NUMBER,
CONSTRAINT USER_PK PRIMARY KEY (USER_ID),
NICK NVARCHAR2(16) UNIQUE,
PASSWORD NVARCHAR2(128) NOT NULL,
EMAIL NVARCHAR2(128) NOT NULL,
USER_DATE TIMESTAMP NOT NULL,
KARMA FLOAT(2) NOT NULL,
IP NVARCHAR2(20) NOT NULL
);*/

    private int userId;
    private String nick;
    private String password;
    private String email;
    private String karma;

    public Users(String ip, Date date, int userId, String nick, String password, String email, String karma) {
        super(ip, date);
        this.userId = userId;
        this.nick = nick;
        this.password = password;
        this.email = email;
        this.karma = karma;
    }

    @Override
    public String getIp() {
        return super.getIp();
    }

    @Override
    public Date getDate() {
        return super.getDate();
    }

    public int getUserId() {
        return userId;
    }

    public String getNick() {
        return nick;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getKarma() {
        return karma;
    }
}
