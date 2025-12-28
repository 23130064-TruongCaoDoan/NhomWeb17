package Service;

import dao.BookDao;
import jakarta.servlet.http.Part;
import model.Book;
import Service.UploadService;
import java.util.List;
import java.util.Map;

public class BookService {
    private BookDao hd=new BookDao();
    private UploadService uploadService = new UploadService();
    public List<Book> getBooksDiscounted(){
        return hd.getBooksDiscounted();
    }
    public List<Book> getAllBooksDiscounted(int limit, int offset) {
        return hd.getAllBooksDiscounted(limit, offset);
    }
    public Book getBooksById(int id){
        return hd.getBookById(id);
    }
    public List<Book> getBookRecommendInDetail(String type){
        return hd.getBookRecommendInDetail(type);
    }
    public List<Book> getBooksNew(){
        return hd.getBooksNew();
    }
    public List<Book> getAllBooksNew(int limit, int offset){
        return hd.getAllBooksNew(limit,offset);
    }
    public List<Book> getAllBooks(int limit, int offset){
        return hd.getAllBooks(limit, offset);
    }
    public List<Book> getAllBooks(){
        return hd.getAllBooks();
    }
    public int countBooks(){return hd.countBooks();}
    public void addBook(Map<String, String[]> params, Part mainImage,
                        List<Part> detailImages) throws Exception {

        // ===== STRING =====
        String code = params.get("code")[0];
        String title = params.get("title")[0];
        String type = params.get("type")[0];
        String publisher = params.get("publisher")[0];
        String bookSize = params.get("size")[0];
        String format = params.get("format")[0];
        String description = params.get("description")[0];
        String provider = params.get("provider")[0];

        // ===== INT / DOUBLE (CÓ DEFAULT) =====
        int authorId = Integer.parseInt(params.get("author_id")[0]);
        int stock = Integer.parseInt(params.get("stock")[0]);
        int pagesNumber = Integer.parseInt(params.get("pageNumber")[0]);
        int age = Integer.parseInt(params.get("age")[0]);

        int price = Integer.parseInt(params.get("price")[0]);

        String priceDiscountStr = params.get("price_discounted")[0];
        int priceDiscounted = (priceDiscountStr == null || priceDiscountStr.isBlank())
                ? price
                : Integer.parseInt(priceDiscountStr);

        String weightStr = params.get("weight")[0];
        double weight = (weightStr == null || weightStr.isBlank())
                ? 0
                : Double.parseDouble(weightStr);

        // ===== DATE =====
        String startDate = params.get("startDate")[0];
        int publishedYear = Integer.parseInt(startDate.substring(0, 4));

        // ===== ẢNH BÌA =====
        String coverImgUrl =
                uploadService.upload(mainImage, "books/main");
        // ===== ẢNH CHI TIÊT =====
        List<String> detailImgUrls =
                uploadService.uploadMultiple(detailImages, "books/detail");

        // ===== SET BOOK =====
        Book book = new Book();
        book.setBookCode(code);
        book.setTitle(title);
        book.setAuthorId(authorId);
        book.setStock(stock);
        book.setType(type);
        book.setPublisher(publisher);
        book.setProvider(provider);
        book.setWeight(weight);
        book.setBookSize(bookSize);
        book.setPagesNumber(pagesNumber);
        book.setFormat(format);
        book.setDescription(description);
        book.setPublishedDate(publishedYear);
        book.setCoverImgUrl(coverImgUrl);
        book.setPrice(price);
        book.setPriceDiscounted(priceDiscounted);
        book.setQuantitySold(0);
        book.setAge(age);
        book.setIsSell(true);

        hd.insert(book, detailImgUrls);
    }



    public List<Book> findListBook(String search, int limit, int offset) {
        return hd.findListBook(search, limit, offset);
    }
    public List<Book> getBookByEvent(int limit, int offset,String title) {
        return hd.getAllBookByEvent(limit, offset,title);
    }

    public int countBooksBySearch(String search) {
        return hd.countBooksBySearch(search);
    }

    public int countBooksDiscounted() {
        return hd.countBooksDiscounted();
    }

    public int countBooksNew() {
        return hd.countBooksNew();
    }

    public int countBooksByEvent(String title) {
        return hd.countBooksByEvent(title);
    }
}
