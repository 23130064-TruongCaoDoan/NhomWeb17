package controler.Cart;

import Cart.Cart;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "updateItem", value = "/updateItem")
public class updateItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        int id = Integer.parseInt(request.getParameter("id")==null?"0":request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity")==null?"0":request.getParameter("quantity"));
        if(cart != null){
            if(id!=0){
                if(quantity>0){
                    cart.updateItem(id,quantity);
                }
                else{
                cart.removeItem(id);
                }
            }
            else {
                cart.removeAllItems();
            }
        }
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(
                "{\"total\":" + cart.getTotalQuantity() + "}"
        );
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}