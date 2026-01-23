package Service;

import dao.BookDao;
import dao.CommentDao;
import model.AdminBookRateView;
import model.Book;
import model.CommentView;
import model.RatingStartView;

import java.time.LocalDate;
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
    public List<CommentView> getCommentByRating(int bookId, int rating){
        return hd.getCommentByRating(bookId, rating);
    }

    public int countByStar(int star, LocalDate from, LocalDate to, String  type) {
        return hd.countByStar(star, from, to, type);
    }
    public int countByStar(int star,  String  type) {
        return hd.countByStar(star, type);
    }
    public int countByStar(int star, LocalDate from, LocalDate to) {
        return hd.countByStar(star, from, to);
    }
    public int countByStar(int star) {
        return hd.countByStar(star);
    }
    public List<AdminBookRateView> getAdminBookRateHigh(LocalDate from, LocalDate to, String type){
        return hd.getAdminBookRateHigh(from, to, type);

    }
    public List<AdminBookRateView> getAdminBookRateHigh(LocalDate from, LocalDate to){
        return hd.getAdminBookRateHigh(from, to);
    }
    public List<AdminBookRateView> getAdminBookRateHigh(String type){
        return hd.getAdminBookRateHigh(type);
    }
    public List<AdminBookRateView> getAdminBookRateHigh(){
        return hd.getAdminBookRateHigh();
    }
    public List<AdminBookRateView> getAdminBookRateLow(LocalDate from, LocalDate to, String type){
        return hd.getAdminBookRateLow(from, to, type);
    }
    public List<AdminBookRateView> getAdminBookRateLow(LocalDate from, LocalDate to){
        return hd.getAdminBookRateLow(from, to);
    }
    public List<AdminBookRateView> getAdminBookRateLow(String type){
        return hd.getAdminBookRateLow(type);
    }
    public List<AdminBookRateView> getAdminBookRateLow(){
        return hd.getAdminBookRateLow();
    }

}
