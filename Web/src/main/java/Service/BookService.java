package Service;

import dao.BookDao;
import dao.UserDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import model.Book;
import model.CommentView;
import model.User;

import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class BookService {
    private BookDao hd=new BookDao();
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
    public void addBook(HttpServletRequest request) throws Exception {

        request.setCharacterEncoding("UTF-8");

        String uploadPath = request.getServletContext()
                .getRealPath("/assets/img/books");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        // ===== STRING =====
        String code = request.getParameter("code");
        String title = request.getParameter("title");
        String type = request.getParameter("type");
        String publisher = request.getParameter("publisher");
        String bookSize = request.getParameter("size");
        String format = request.getParameter("format");
        String description = request.getParameter("description");
        String provider = request.getParameter("provider");

        // ===== INT / DOUBLE (CÓ DEFAULT) =====
        int authorId = Integer.parseInt(request.getParameter("author_id"));
        int stock = Integer.parseInt(request.getParameter("stock"));
        int pagesNumber = Integer.parseInt(request.getParameter("pageNumber"));
        int age = Integer.parseInt(request.getParameter("age"));

        int price = Integer.parseInt(request.getParameter("price"));

        String priceDiscountStr = request.getParameter("price_discounted");
        int priceDiscounted = (priceDiscountStr == null || priceDiscountStr.isBlank())
                ? price
                : Integer.parseInt(priceDiscountStr);

        String weightStr = request.getParameter("weight");
        double weight = (weightStr == null || weightStr.isBlank())
                ? 0
                : Double.parseDouble(weightStr);

        // ===== DATE =====
        String startDate = request.getParameter("startDate");
        int publishedYear = Integer.parseInt(startDate.substring(0, 4));

        // ===== ẢNH BÌA =====
        Part mainPart = request.getPart("img-main");
        String coverImgUrl = null;
        if (mainPart != null && mainPart.getSize() > 0) {
            String fileName = Paths.get(mainPart.getSubmittedFileName())
                    .getFileName().toString();
            mainPart.write(uploadPath + File.separator + fileName);
            coverImgUrl = "assets/img/books/" + fileName;
        }

        // ===== ẢNH CHI TIẾT =====
        List<String> detailImages = new ArrayList<>();
        for (Part part : request.getParts()) {
            if ("imgDetail".equals(part.getName()) && part.getSize() > 0) {
                String fileName = Paths.get(part.getSubmittedFileName())
                        .getFileName().toString();
                part.write(uploadPath + File.separator + fileName);
                detailImages.add("assets/img/books/" + fileName);
            }
        }

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

        hd.insert(book, detailImages);
    }



    public List<Book> findListBook(String search, int limit, int offset) {
        return hd.findListBook(search, limit, offset);
    }

}
