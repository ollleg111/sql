package lesson6.hw4;

import java.util.Date;

public class ForumPosts extends CreateData {

    /*CREATE TABLE FORUM_POSTS(
POST_ID NUMBER,
CONSTRAINT POST_PK PRIMARY KEY (POST_ID),
SUBCATEGORY_ID NUMBER,
CONSTRAINT SUBCATEGORIES_FK FOREIGN KEY(SUBCATEGORY_ID) REFERENCES FORUM_SUBCATEGORIES(SUBCATEGORY_ID),
USER_ID NUMBER,
CONSTRAINT USERS_FK FOREIGN KEY(USER_ID) REFERENCES USERS(USER_ID),
OPTION_ID NUMBER,
CONSTRAINT OPTIONS_FK FOREIGN KEY(OPTION_ID) REFERENCES FORUM_POLLS_OPTIONS(OPTION_ID),
TITLE NVARCHAR2(90) NOT NULL,
POSTS_CONTENT CLOB,
IS_POLL NUMBER(1,0),
POST_DATE TIMESTAMP NOT NULL,
IP NVARCHAR2(20) NOT NULL
);*/

    private ForumPollsOptions forumPollsOptions;
    private Users users;
    private ForumSubcategories forumSubcategories;

    private int postId;
    private String title;
    private String content;
    private boolean isPoll;

    public ForumPosts(String ip, Date date, ForumPollsOptions forumPollsOptions, Users users,
                      ForumSubcategories forumSubcategories, int postId, String title, String content,
                      boolean isPoll) {
        super(ip, date);
        this.forumPollsOptions = forumPollsOptions;
        this.users = users;
        this.forumSubcategories = forumSubcategories;
        this.postId = postId;
        this.title = title;
        this.content = content;
        this.isPoll = isPoll;
    }

    @Override
    public String getIp() {
        return super.getIp();
    }

    @Override
    public Date getDate() {
        return super.getDate();
    }

    public ForumPollsOptions getForumPollsOptions() {
        return forumPollsOptions;
    }

    public Users getUsers() {
        return users;
    }

    public ForumSubcategories getForumSubcategories() {
        return forumSubcategories;
    }

    public int getPostId() {
        return postId;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public boolean isPoll() {
        return isPoll;
    }
}
