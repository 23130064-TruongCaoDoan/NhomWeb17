package controler.Cart;

import Cart.Cart;
import Service.BookService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "addItemShoppingInHome", value = "/addItemShoppingInHome")
public class addItemShoppingInHome extends HttpServlet {
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