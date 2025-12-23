package controler;

import Cart.Cart;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.User;

import java.io.IOException;

@WebServlet(name = "ThanhToan", value = "/ThanhToan")
public class ThanhToan extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User)request.getSession().getAttribute("user");
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        if(user==null){
            response.sendRedirect("login");
            return;
        }
        if(cart.getItems().size()==0) {
            response.sendRedirect("ShoppingCart");
            return;
        }
        request.getRequestDispatcher("user/ThanhToan.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}