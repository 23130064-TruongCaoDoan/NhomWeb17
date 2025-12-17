package controler;

import Service.BookService;
import Service.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "search", value = "/search")
public class Search extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("bSearch");
        if (search == null || search.equals("")) {
            response.sendRedirect("home");
            return;
        } else {
            BookService bookService = new BookService();
            List<Book> books = bookService.findListBook(search);
            request.setAttribute("search", search);
            request.setAttribute("listBook", books);
            request.getRequestDispatcher("user/dsSanPham.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}