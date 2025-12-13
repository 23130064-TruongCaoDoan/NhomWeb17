package dao;
import com.mysql.cj.protocol.a.LocalDateValueEncoder;
import model.Book;

import java.time.LocalDate;
import java.util.List;
import java.util.Locale;

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


}
