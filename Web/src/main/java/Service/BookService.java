package Service;

import dao.BookDao;
import dao.UserDao;
import model.Book;
import model.User;

import java.util.List;

public class BookService {
    private BookDao hd=new BookDao();
    public List<Book> getBooksDiscounted(){
        return hd.getBooksDiscounted();
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
}
