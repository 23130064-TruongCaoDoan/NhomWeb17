package dao;

import model.CommentView;

import java.util.List;

public class CommentDao extends BaseDao{
    public List<CommentView> getAllComment(int bookId) {
        return getJdbi().withHandle(handle ->
                handle.createQuery(
                                "SELECT  u.name AS name , c.rating AS rating, c.content  AS content, c.create_at AS createdAt" +
                                        " FROM comments c" +
                                        " INNER JOIN USER u ON u.id = c.user_id" +
                                        " WHERE c.book_id = :book_id")
                        .bind("book_id", bookId)
                        .mapToBean(CommentView.class)
                        .list()
        );
    }
    public void insertComment(int userId, int bookId, int rating, String content) {
        getJdbi().useHandle(handle ->
                handle.createUpdate(
                                "INSERT INTO comments(user_id, book_id, rating, content, create_at) " +
                                        "VALUES (:userId, :bookId, :rating, :content, NOW())"
                        )
                        .bind("userId", userId)
                        .bind("bookId", bookId)
                        .bind("rating", rating)
                        .bind("content", content)
                        .execute()
        );
    }

    public static void main(String[] args) {
        CommentDao dao = new CommentDao();
        List<CommentView> comments = dao.getAllComment(2);
        System.out.println(comments);
    }
}
