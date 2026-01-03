package controler;

import Cart.Cart;
import Service.AddressService;
import Service.VoucherService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Address;
import model.User;
import model.Voucher;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ThanhToan", value = "/ThanhToan")
public class ThanhToan extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        VoucherService voucherService = new VoucherService();
        double cartTotal = cart == null ? 0 : cart.getTotalBill();
        int id = user == null ? 0 : user.getId();
        if (user == null) {
            response.sendRedirect("login");
            return;
        }
        if (cart == null) {
            response.sendRedirect("ShoppingCart");
            return;
        }
        if (cart.getItems().size() == 0) {
            response.sendRedirect("ShoppingCart");
            return;
        }
        request.setAttribute("cart", cart);


        double total = cart == null ? 0 : cart.getTotalBill();

        Voucher voucherDis = (Voucher) request.getSession().getAttribute("appliedDiscountVoucher");
        Voucher voucherShip = (Voucher) request.getSession().getAttribute("appliedShipVoucher");


        double finalTotal = total;

        if (voucherDis != null && voucherShip != null && "discount".equals(voucherDis.getType()) && "ship".equals(voucherShip.getType())) {
            double value1 = voucherDis.getValuee();

            if (value1 > 0) {
                if (value1 < 1) {
                    double discountAmount = total * value1;
                    finalTotal -= discountAmount;
                } else {
                    finalTotal -= value1;
                }
            }
            if (finalTotal < 0) {
                finalTotal = 0;
            }
        }

        request.setAttribute("finalTotal", finalTotal);


        List<Voucher> listVoucherDiscount = voucherService.listVoucherDiscountUser(id);
        List<Voucher> listVoucherShip = voucherService.listVoucherShipUser(id);
        listVoucherDiscount = voucherService.filterVoucherValid(cart, cartTotal, listVoucherDiscount);
        listVoucherShip = voucherService.filterVoucherValid(cart, cartTotal, listVoucherShip);
        request.setAttribute("listVoucherDiscount", listVoucherDiscount);
        request.setAttribute("listVoucherShip", listVoucherShip);
        AddressService addressService = new AddressService();
        List<Address> listAddress = addressService.getAddress(user.getId());
        request.setAttribute("listAddress", listAddress);
        request.getRequestDispatcher("user/ThanhToan.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}