package dao;
import com.mysql.cj.protocol.a.LocalDateValueEncoder;
import model.Book;

import java.time.LocalDate;
import java.util.List;
import java.util.Locale;

public class HomeDao extends BaseDao{
    public List<Book> getBooksDiscounted() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE price_discounted > 0")
                        .mapToBean(Book.class)
                        .list()
        );
    }

    public static void main(String[] args) {
        HomeDao hd=new HomeDao();
        System.out.println(hd.getBooksDiscounted());
    }
}
