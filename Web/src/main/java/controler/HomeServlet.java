package controler;

import Service.BookService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "home", value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookService bookService = new BookService();
        List<Book> booksListSale = bookService.getBooksDiscounted();
        List<Book> booksListNew = bookService.getBooksNew();
        request.setAttribute("booksListSale", booksListSale);
        request.setAttribute("booksListNew", booksListNew);
        request.getRequestDispatcher("user/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}