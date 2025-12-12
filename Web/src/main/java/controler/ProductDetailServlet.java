package controler;

import Service.BookService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;

import java.io.IOException;

@WebServlet(name = "productDetail", value = "/productDetail")
public class ProductDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("id"));
        BookService bookService = new BookService();
        Book book = bookService.getBooksById(bookId);
        request.setAttribute("book", book);
        request.getRequestDispatcher("/productDetail.jsp").forward(request,response);;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}