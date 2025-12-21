package Service;

import dao.BookDao;
import dao.CommentDao;
import model.CommentView;

import java.util.List;

public class CommentService {
    private CommentDao hd=new CommentDao();
    public List<CommentView> getCommentView(int bookId){
        return hd.getAllComment(bookId);
    }
    public void insertComment(int userId, int bookId, int rating, String content) {
        hd.insertComment(userId, bookId, rating, content);
    }
    public Double getAverageRating(int bookId){
        return hd.getAverageRating(bookId);
    }

    public static void main(String[] args) {
         CommentDao hd=new CommentDao();
        System.out.println(hd.getAllComment(2));

    }

}
