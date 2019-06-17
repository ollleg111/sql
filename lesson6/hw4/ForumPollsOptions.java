package lesson6.hw4;

import java.util.Date;

public class ForumPollsOptions {

    /*CREATE TABLE FORUM_POOLS_OPTIONS(
OPTION_ID NUMBER,
CONSTRAINT OPTION_PK PRIMARY KEY (OPTION_ID),
POST_ID NUMBER,
CONSTRAINT POSTS_FK FOREIGN KEY(POST_ID) REFERENCES FORUM_POSTS(POST_ID),
TITLE NVARCHAR2(64) NOT NULL,
POST_DATE TIMESTAMP NOT NULL
);*/

    private ForumPosts forumPosts;

    private int optionId;
    private String title;
    private Date postDate;

    public ForumPollsOptions(ForumPosts forumPosts, int optionId, String title, Date postDate) {
        this.forumPosts = forumPosts;
        this.optionId = optionId;
        this.title = title;
        this.postDate = postDate;
    }

    public ForumPosts getForumPosts() {
        return forumPosts;
    }

    public int getOptionId() {
        return optionId;
    }

    public String getTitle() {
        return title;
    }

    public Date getPostDate() {
        return postDate;
    }
}
