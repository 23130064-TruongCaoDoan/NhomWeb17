package controler.Cart;

import Cart.Cart;
import Service.BookService;
import Service.VoucherService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;
import model.User;
import model.Voucher;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShoppingCart", value = "/ShoppingCart")
public class ShoppingCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VoucherService voucherService = new VoucherService();
        User user = (User) request.getSession().getAttribute("user");
        int id = user==null?0:user.getId();
        List<Voucher> listVoucherDiscount=voucherService.listVoucherDiscountUser(id);
        List<Voucher> listVoucherShip=voucherService.listVoucherShipUser(id);
        request.setAttribute("listVoucherDiscount",listVoucherDiscount);
        request.setAttribute("listVoucherShip",listVoucherShip);
        request.getRequestDispatcher("user/shoppingCart.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}