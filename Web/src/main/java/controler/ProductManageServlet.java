package controler;

import Service.AuthorService;
import Service.BookService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@WebServlet(name = "ProductManageServlet", value = "/product-manage")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 10 * 1024 * 1024,
        maxRequestSize = 50 * 1024 * 1024
)
public class ProductManageServlet extends HttpServlet {
    BookService bookService = new BookService();
    AuthorService authorService = new AuthorService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Book> lsBook = bookService.getAllBooks();
        request.setAttribute("lsbook",lsBook);
        request.setAttribute("authors", authorService.getAllAuthors());
        request.getRequestDispatcher("admin/ManageProduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            bookService.addBook(request);
            response.sendRedirect(request.getContextPath() + "/product-manage");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

}