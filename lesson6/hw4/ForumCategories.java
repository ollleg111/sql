package lesson6.hw4;

import java.util.Date;

public class ForumCategories extends CreateData {

    /*CREATE TABLE FORUM_CATEGORIES(
CATEGORY_ID NUMBER,
CONSTRAINT CATEGORIES_PK PRIMARY KEY (CATEGORY_ID),
TITLE NVARCHAR2(64) NOT NULL,
DESCRIPTION CLOB,
CATEGORY_DATE TIMESTAMP NOT NULL,
IP NVARCHAR2(20) NOT NULL
);*/


    private int categoryId;
    private String title;
    private String description;
    private Date categoryDate;

    public ForumCategories(String ip, Date date, int categoryId, String title, String description, Date categoryDate) {
        super(ip, date);
        this.categoryId = categoryId;
        this.title = title;
        this.description = description;
        this.categoryDate = categoryDate;
    }

    @Override
    public String getIp() {
        return super.getIp();
    }

    @Override
    public Date getDate() {
        return super.getDate();
    }

    public int getCategoryId() {
        return categoryId;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Date getCategoryDate() {
        return categoryDate;
    }
}
