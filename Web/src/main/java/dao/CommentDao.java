package dao;

import model.CommentView;
import model.RatingStartView;

import java.util.List;

public class CommentDao extends BaseDao{
    public List<CommentView> getAllComment(int bookId) {
        return getJdbi().withHandle(handle ->
                handle.createQuery(
                                "SELECT  u.name AS name , c.rating AS rating, c.content  AS content, DATE_FORMAT(c.create_at, '%d/%m/%Y') AS createAt, c.img_comment AS imgComment" +
                                        " FROM comments c" +
                                        " INNER JOIN USER u ON u.id = c.user_id" +
                                        " WHERE c.book_id = :book_id ORDER BY c.create_at DESC")
                        .bind("book_id", bookId)
                        .mapToBean(CommentView.class)
                        .list()
        );
    }
    public void insertComment(int userId, int bookId, int rating, String content, String imgURL) {
        getJdbi().useHandle(handle ->
                handle.createUpdate(
                                "INSERT INTO comments(user_id, book_id, rating, content, create_at, img_comment) " +
                                        "VALUES (:userId, :bookId, :rating, :content, NOW(), :imgURL)"
                        )
                        .bind("userId", userId)
                        .bind("bookId", bookId)
                        .bind("rating", rating)
                        .bind("content", content)
                        .bind("imgURL", imgURL)
                        .execute()
        );
    }
    public Double getAverageRating(int bookId) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT ROUND(AVG(rating),1) FROM comments WHERE book_id=:book_id")
                        .bind("book_id", bookId)
                        .mapTo(double.class)
                        .findOne()
                        .orElse(0.0)
        );
    }
    public List<RatingStartView> getRatingStartView(int bookId) {
        return getJdbi().withHandle(handle ->
                handle.createQuery(
                                "SELECT rating, COUNT(*) AS total, " +
                                        "ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percent " +
                                        "FROM comments " +
                                        "WHERE book_id = :book_id " +
                                        "GROUP BY rating " +
                                        "ORDER BY rating DESC"
                        )
                        .bind("book_id",bookId)
                        .mapToBean(RatingStartView.class)
                        .list()
        );
    }
    public List<CommentView> getCommentByRating(int bookId, int rating) {
        return getJdbi().withHandle(handle ->
                handle.createQuery(
                                "SELECT  u.name AS name , c.rating AS rating, c.content  AS content, DATE_FORMAT(c.create_at, '%d/%m/%Y') AS createAt, c.img_comment AS imgComment" +
                                        " FROM comments c" +
                                        " INNER JOIN USER u ON u.id = c.user_id" +
                                        " WHERE c.book_id = :book_id AND c.rating = :rating ORDER BY c.create_at DESC")
                        .bind("book_id", bookId)
                        .bind("rating", rating)
                        .mapToBean(CommentView.class)
                        .list()
        );
    }

    public static void main(String[] args) {
        CommentDao dao = new CommentDao();
        List<RatingStartView> comments = dao.getRatingStartView(2);
        System.out.println(dao.getAllComment(2));
    }
}
