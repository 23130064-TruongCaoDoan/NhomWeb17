package controler.Cart;

import Cart.Cart;
import Service.BookService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Book;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "addItemShoppingInDanhMuc", value = "/addItemShoppingInDanhMuc")
public class addItemShoppingInDanhMuc extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null){
            cart = new Cart();
        }
        BookService bookService = new BookService();
        Book book=bookService.getBooksById(bookId);
        if(book!=null){
            cart.addItem(book, quantity);
            session.setAttribute("cart",cart);
        }
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}