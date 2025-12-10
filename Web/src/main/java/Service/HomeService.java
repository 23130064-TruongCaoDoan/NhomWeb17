package Service;

import dao.HomeDao;
import dao.UserDao;
import model.Book;
import model.User;

import java.util.List;

public class HomeService {
    private HomeDao hd=new HomeDao();
    public List<Book> getBooksDiscounted(){
        return hd.getBooksDiscounted();
    }
}
