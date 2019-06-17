package lesson6.hw4;

import java.util.Date;

public class ForumSubcategories extends CreateData {

    /*CREATE TABLE FORUM_SUBCATEGORIES(
SUBCATEGORY_ID NUMBER,
CONSTRAINT SUBCATEGORY_PK PRIMARY KEY (SUBCATEGORY_ID),
CATEGORY_ID NUMBER,
CONSTRAINT CATEGORIES_FK FOREIGN KEY(CATEGORY_ID) REFERENCES FORUM_CATEGORIES(CATEGORY_ID),
TITLE NVARCHAR2(45) NOT NULL,
DESCRIPTION CLOB,
FORUM_DATE TIMESTAMP NOT NULL,
IP NVARCHAR2(20) NOT NULL
);*/

    private ForumCategories forumCategories;

    private int subcategoryId;
    private String title;
    private String description;

    public ForumSubcategories(String ip, Date date, ForumCategories forumCategories, int subcategoryId,
                              String title, String description) {
        super(ip, date);
        this.forumCategories = forumCategories;
        this.subcategoryId = subcategoryId;
        this.title = title;
        this.description = description;
    }

    @Override
    public String getIp() {
        return super.getIp();
    }

    @Override
    public Date getDate() {
        return super.getDate();
    }

    public ForumCategories getForumCategories() {
        return forumCategories;
    }

    public int getSubcategoryId() {
        return subcategoryId;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }
}
