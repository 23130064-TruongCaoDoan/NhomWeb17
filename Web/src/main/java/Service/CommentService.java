package Service;

import dao.BookDao;
import dao.CommentDao;
import model.CommentView;
import model.RatingStartView;

import java.util.List;

public class CommentService {
    private CommentDao hd=new CommentDao();
    public List<CommentView> getCommentView(int bookId){
        return hd.getAllComment(bookId);
    }
    public void insertComment(int userId, int bookId, int rating, String content, String imgURL) {
        hd.insertComment(userId, bookId, rating, content, imgURL);
    }
    public Double getAverageRating(int bookId){
        return hd.getAverageRating(bookId);
    }
    public List<RatingStartView> getRatingStartView(int bookId){
        return hd.getRatingStartView(bookId);
    }
}
