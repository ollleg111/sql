package lesson6.hw4;

import java.util.Date;

public abstract class CreateData {

    private String ip;
    private Date date;

    public CreateData(String ip, Date date) {
        this.ip = ip;
        this.date = date;
    }

    public String getIp() {
        return ip;
    }

    public Date getDate() {
        return date;
    }
}
