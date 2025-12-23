package controler.product_detail;

import Service.BookService;
import Service.CommentService;
import dao.CommentDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Book;
import model.CommentView;
import model.RatingStartView;
import model.User;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;
@WebServlet (name="comment" ,value="/comment")
public class CommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login");
            return;
        }
        BookService bookService = new BookService();
        int userId = user.getId();
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        int rating = Integer.parseInt(request.getParameter("rating"));
        String content = request.getParameter("content");
        Book book = bookService.getBooksById(bookId);
        String type = bookService.getBooksById(bookId).getType();
        String typeEncoded = URLEncoder.encode(type, StandardCharsets.UTF_8);


        CommentDao commentDao = new CommentDao();
        commentDao.insertComment(userId, bookId, rating, content);


        response.sendRedirect(request.getContextPath()+"/productDetail?id=" + bookId+"&type=" +typeEncoded);
    }

    public static void main(String[] args) {
    }
}
