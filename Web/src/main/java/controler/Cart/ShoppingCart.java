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
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        double cartTotal = cart == null ? 0 : cart.getTotalBill();
        User user = (User) session.getAttribute("user");
        int id = user==null?0:user.getId();

        double total = cart == null ? 0 : cart.getTotalBill();

        Voucher applied = (Voucher) session.getAttribute("appliedDiscountVoucher");
        double finalTotal = total;

        if (applied != null && "discount".equals(applied.getType())) {
            double value = applied.getValuee();

            if (value > 0) {
                if (value < 1) {
                    double discountAmount = total * value;
                    finalTotal -= discountAmount;
                } else {
                    finalTotal -= value;
                }
            }
            if (finalTotal < 0) {
                finalTotal = 0;
            }
        }

        request.setAttribute("finalTotal", finalTotal);


        List<Voucher> listVoucherDiscount =voucherService.listVoucherDiscountUser(id);
        List<Voucher> listVoucherShip =voucherService.listVoucherShipUser(id);
        listVoucherDiscount = voucherService.filterVoucherValid(cart, cartTotal, listVoucherDiscount);
        listVoucherShip = voucherService.filterVoucherValid(cart, cartTotal, listVoucherShip);
        request.setAttribute("listVoucherDiscount",listVoucherDiscount);
        request.setAttribute("listVoucherShip",listVoucherShip);
        request.getRequestDispatcher("user/shoppingCart.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}