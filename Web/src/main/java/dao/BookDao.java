package dao;
import model.Book;
import model.CommentView;

import java.util.List;

public class BookDao extends BaseDao{
    public List<Book> getBooksDiscounted() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE price_discounted > 0 AND is_sell=1")
                        .mapToBean(Book.class)
                        .list()
        );
    }
    public List<Book> getBooksNew() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE is_sell=1 ORDER BY add_date DESC")
                        .mapToBean(Book.class)
                        .list()
        );
    }

    public Book getBookById(int bookId) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE id = :id AND is_sell=1")
                        .bind("id", bookId)
                        .mapToBean(Book.class)
                        .findOne()
                        .orElse(null)
        );
    }
    public List<Book> getBookRecommendInDetail(String type) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE type = :type AND is_sell=1 ORDER BY quantity_sold DESC")
                        .bind("type", type)
                        .mapToBean(Book.class)
                        .list()
        );
    }
    public List<Book> getAllBooks(int limit, int offset) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE is_sell=1 LIMIT :limit OFFSET :offset")
                        .bind("limit", limit)
                        .bind("offset", offset)
                        .mapToBean(Book.class)
                        .list()
        );
    }
    public List<Book> getAllBooks() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE is_sell=1")
                        .mapToBean(Book.class)
                        .list()
        );
    }
    public int countBooks() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*) FROM BOOKS WHERE is_sell = 1")
                        .mapTo(int.class)
                        .one()
        );
    }

    public static void main(String[] args) {
        BookDao bookDao = new BookDao();
        System.out.println(bookDao.getBookById(1));
    }

}
