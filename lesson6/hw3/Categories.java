package lesson6.hw3;

public class Categories {

    /*CREATE TABLE CATEGORIES(
            CATEGORY_ID NUMBER,
            CONSTRAINT CATEGORY_PK PRIMARY KEY (CATEGORY_ID),
    CATEGORY_NAME NVARCHAR2(50) UNIQUE,
    DESCRIPTION NVARCHAR2(100) NOT NULL,
    PICTURE NVARCHAR2(100) NOT NULL
-- не знаю ничего о пикчерс
);*/

    private long categoryId;
    private String categoryName;
    private String description;
    private String picture;

    public Categories(long categoryId, String categoryName, String description, String picture) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.description = description;
        this.picture = picture;
    }

    public long getCategoryId() {
        return categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public String getDescription() {
        return description;
    }

    public String getPicture() {
        return picture;
    }
}
