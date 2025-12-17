package controler;

import Service.BookService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;

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
        List<Book> bookListRe = bookService.getBookRecommendInDetail(type);
        request.setAttribute("book", book);
        request.setAttribute("bookListRe", bookListRe);
        request.getRequestDispatcher("user/productDetail.jsp").forward(request,response);;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}