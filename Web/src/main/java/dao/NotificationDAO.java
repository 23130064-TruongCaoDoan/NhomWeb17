package dao;

import model.Notification;

public class NotificationDAO extends BaseDao {

    public void insert(Notification n) {
        getJdbi().useHandle(handle -> {
            handle.createUpdate(
                            "INSERT INTO notification (user_id, title, noti) " +
                                    "VALUES (:userId, :title, :noti)"
                    )
                    .bind("userId", n.getUserId())
                    .bind("title", n.getTitle())
                    .bind("noti", n.getNoti())
                    .execute();
        });
    }
}
