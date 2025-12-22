package dao;

import model.Book;
import model.CommentView;

import java.util.List;

public class BookDao extends BaseDao {
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
                handle.createQuery(
                                "SELECT b.id, b.book_code, b.title, a.name AS author, b.price, b.stock, b.type, b.age, b.cover_img_url FROM books b LEFT JOIN authors a ON b.author_id = a.id WHERE b.is_sell = 1")
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

    public List<Book> findListBook(String search, int limit, int offset) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE (title like :search or author like :search or type like :search) AND is_sell=1 LIMIT :limit OFFSET :offset").bind("limit", limit)
                        .bind("offset", offset).bind("search", "%" + search + "%").mapToBean(Book.class).list()
        );
    }

    public void insert(Book book, List<String> detailImages) {
        getJdbi().useHandle(h -> {

            int bookId = h.createUpdate(
                            "INSERT INTO books (" +
                                    "book_code, title, author_id, price, price_discounted, type, age, " +
                                    "cover_img_url, description, publisher, provider, published_date, " +
                                    "weight, book_size, pages_number, format, is_sell, add_date, quantity_sold, stock" +
                                    ") VALUES (" +
                                    ":bookCode, :title, :authorId, :price, :priceDiscounted, :type, :age, " +
                                    ":coverImgUrl, :description, :publisher, :provider, :publishedDate, " +
                                    ":weight, :bookSize, :pagesNumber, :format, :isSell, CURDATE(), :quantitySold, :stock" +
                                    ")"
                    )
                    .bind("bookCode", book.getBookCode())
                    .bind("title", book.getTitle())
                    .bind("authorId", book.getAuthorId())
                    .bind("price", book.getPrice())
                    .bind("priceDiscounted", book.getPriceDiscounted())
                    .bind("type", book.getType())
                    .bind("age", book.getAge())
                    .bind("coverImgUrl", book.getCoverImgUrl())
                    .bind("description", book.getDescription())
                    .bind("publisher", book.getPublisher())
                    .bind("provider", book.getProvider())
                    .bind("publishedDate", book.getPublishedDate())
                    .bind("weight", book.getWeight())
                    .bind("bookSize", book.getBookSize())
                    .bind("pagesNumber", book.getPagesNumber())
                    .bind("format", book.getFormat())
                    .bind("isSell", book.getIsSell())          // 0 / 1
                    .bind("quantitySold", book.getQuantitySold())
                    .bind("stock", book.getStock())
                    .executeAndReturnGeneratedKeys("id")
                    .mapTo(int.class)
                    .one();

            // ảnh chi tiết
            for (String img : detailImages) {
                h.createUpdate(
                                "INSERT INTO book_image_details (book_id, img_url) VALUES (:bookId, :img)"
                        )
                        .bind("bookId", bookId)
                        .bind("img", "assets/img/books/" + img)
                        .execute();
            }
        });
    }

    public List<Book> getAllBooksDiscounted(int limit, int offset) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE price_discounted > 0 AND is_sell=1 LIMIT :limit OFFSET :offset").bind("limit", limit)
                        .bind("offset", offset)
                        .mapToBean(Book.class)
                        .list()
        );
    }

    public List<Book> getAllBooksNew(int limit, int offset) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM BOOKS WHERE is_sell=1 ORDER BY add_date DESC LIMIT :limit OFFSET :offset").bind("limit", limit)
                        .bind("offset", offset)
                        .mapToBean(Book.class)
                        .list()
        );
    }

    public int countBooksBySearch(String search) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*) FROM BOOKS WHERE is_sell = 1 AND (title like :search or author like :search or type like :search)").bind("search", search)
                        .mapTo(int.class)
                        .one()
        );
    }

    public int countBooksDiscounted() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*) FROM BOOKS WHERE price_discounted > 0 AND is_sell=1")
                        .mapTo(int.class)
                        .one()
        );
    }
    public int countBooksNew() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT COUNT(*) FROM BOOKS WHERE is_sell=1 ORDER BY add_date DESC")
                        .mapTo(int.class)
                        .one()
        );
    }
}
