package controler;

import Service.BookService;
import Service.CommentService;
import dao.CommentDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;
import model.CommentView;
import model.RatingStartView;
import model.User;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "productDetail", value = "/productDetail")
public class ProductDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("id"));
        String type = request.getParameter("type");
        BookService bookService = new BookService();

        Book book = bookService.getBooksById(bookId);
        CommentService commentService = new CommentService();

        List<Book> bookListRe = bookService.getBookRecommendInDetail(type);
        List<CommentView> commentViewList = commentService.getCommentView(bookId);
        Double averageRating = commentService.getAverageRating(bookId);
        List<RatingStartView> ratingList = commentService.getRatingStartView(bookId);



        request.setAttribute("book", book);
        request.setAttribute("bookListRe", bookListRe);
        request.setAttribute("commentViewList", commentViewList);
        request.setAttribute("averageRating", averageRating);
        request.setAttribute("ratingList", ratingList);
        request.getRequestDispatcher("user/productDetail.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login");
            return;
        }

        int userId = user.getId();
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        int rating = Integer.parseInt(request.getParameter("rating"));
        String content = request.getParameter("content");

        CommentDao commentDao = new CommentDao();
        commentDao.insertComment(userId, bookId, rating, content);

        response.sendRedirect("productDetail?id=" + bookId);
    }
}