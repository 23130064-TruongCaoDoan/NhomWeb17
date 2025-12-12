package dao;
import com.mysql.cj.protocol.a.LocalDateValueEncoder;
import model.Book;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class BookDao extends BaseDao{
    public List<Book> getBooksDiscounted() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE price_discounted > 0 limit 5")
                        .mapToBean(Book.class)
                        .list()
        );
    }
    public Book getBookById(int bookId) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE id = :id")
                        .bind("id", bookId)
                        .mapToBean(Book.class)
                        .findOne()
                        .orElse(null)
        );
    }

//    public int addBookAndReturnId(){
//        int bookId = handle.createUpdate("INSERT INTO book values(?,?,?,?,?)")
//                .bind(...)
//                   .executeAndReturnGeneratedKeys("book_id")
//                .mapTo(Integer.class)
//                .one();
//    }
//    public void addDetailImg(int book_code,String img_url){
//        getJdbi().useHandle(handle ->
//                handle.createUpdate("INSERT INTO book_image (book_id, img_url) VALUES (?, ?)")
//                        .bind(0, book_code)
//                        .bind(1, img_url)
//                        .execute()
//        );
//    }
    public List<Book> getAllBook() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS")
                        .mapToBean(Book.class)
                        .list()
        );
    }

//    public static void main(String[] args) {
//        HomeDao hd=new HomeDao();
//        System.out.println(hd.getBooksDiscounted());
//    }
}
