package controler.danh_muc;

import Service.BookService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Book;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "dsSanPham", value = "/dsSanPham")

public class DanhMucServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookService bookService = new BookService();
        int page = 1;
        int pageSize = 28;

        String p = request.getParameter("page");
        if (p != null) {
            page = Integer.parseInt(p);
        }

        int totalBooks = bookService.countBooks();
        int totalPages = (int) Math.ceil((double) totalBooks / pageSize);
        if (page > totalPages) {
            page = totalPages;
        }

        int offset = (page - 1) * pageSize;
        List<Book> bookList = bookService.getAllBooks(pageSize, offset);
        request.setAttribute("bookList", bookList);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages",totalPages);
        request.getRequestDispatcher("user/dsSanPham.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
}
