package lesson6.hw4;

import java.util.Date;

public class ForumPollsOptionsVotes extends CreateData {

    /*CREATE TABLE FORUM_POLLS_OPTIONS_VOTES(
POOL_ID NUMBER,
CONSTRAINT POOLS_PK PRIMARY KEY (POOL_ID),
USER_ID NUMBER,
CONSTRAINT USERS_FK FOREIGN KEY(USER_ID) REFERENCES USERS(USER_ID),
OPTION_ID NUMBER,
CONSTRAINT OPTIONS_FK FOREIGN KEY(OPTION_ID) REFERENCES FORUM_POOLS_OPTIONS(OPTION_ID),
VOTE_DATE TIMESTAMP NOT NULL,
IP NVARCHAR2(20)NOT NULL
);*/

    private ForumPollsOptions forumPollsOptions;
    private Users users;

    private int pollsId;

    public ForumPollsOptionsVotes(String ip, Date date, ForumPollsOptions forumPollsOptions, Users users, int pollsId) {
        super(ip, date);
        this.forumPollsOptions = forumPollsOptions;
        this.users = users;
        this.pollsId = pollsId;
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

    public int getPollsId() {
        return pollsId;
    }
}
