package controler.ThanhToan;

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
import java.util.List;

@WebServlet(name = "ThanhToan", value = "/ThanhToan")
public class ThanhToan extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Cart cart = (Cart) session.getAttribute("cart");

        if (user == null) {
            response.sendRedirect("login");
            return;
        }
        if (cart == null || cart.getItems().isEmpty()) {
            response.sendRedirect("ShoppingCart");
            return;
        }

        // ================= SHIP =================
        String shipType = request.getParameter("ship");
        if (shipType == null) shipType = "fast";

        boolean usePoint = request.getParameter("usePoint") != null;

        // ================= ADDRESS =================
        AddressService addressService = new AddressService();
        List<Address> listAddress = addressService.getAddress(user.getId());

        String addressIdStr = request.getParameter("addressId");
        int selectedAddressId = 0;

        if (addressIdStr != null) {
            selectedAddressId = Integer.parseInt(addressIdStr);
        } else {
            // fallback địa chỉ mặc định
            for (Address a : listAddress) {
                if (a.getIsDefault()) {
                    selectedAddressId = a.getId();
                    break;
                }
            }
        }

        // ================= NOTE =================
        String orderNote = request.getParameter("orderNote");
        if (orderNote == null) orderNote = "";

        // ================= TÍNH TIỀN =================
        double totalBill = cart.getTotalBill();
        double shipFee = "fast".equals(shipType) ? 60000 : 30000;

        Voucher voucherDis = (Voucher) session.getAttribute("appliedDiscountVoucher");
        Voucher voucherShip = (Voucher) session.getAttribute("appliedShipVoucher");

        double discountMoney = 0;

        if (voucherDis != null && "discount".equals(voucherDis.getType())) {
            double value = voucherDis.getValuee();
            if (value < 1) discountMoney = totalBill * value;
            else discountMoney = value;
        }

        if (voucherShip != null && "ship".equals(voucherShip.getType())) {
            double value = voucherShip.getValuee();
            if (value < 1) shipFee -= shipFee * value;
            else shipFee -= value;
            if (shipFee < 0) shipFee = 0;
        }

        double pointUsed = 0;
        if (usePoint) {
            pointUsed = Math.min(user.getPoint(), totalBill - discountMoney);
            if (pointUsed < 0) pointUsed = 0;
        }

        double finalTotal = totalBill + shipFee - discountMoney - pointUsed;
        if (finalTotal < 0) finalTotal = 0;

        // ================= SET ATTRIBUTE =================
        request.setAttribute("cart", cart);
        request.setAttribute("totalBill", totalBill);
        request.setAttribute("shipFee", shipFee);
        request.setAttribute("discountMoney", discountMoney);
        request.setAttribute("pointUsed", pointUsed);
        request.setAttribute("finalTotal", finalTotal);
        request.setAttribute("shipType", shipType);
        request.setAttribute("usePoint", usePoint);

        // NEW
        request.setAttribute("listAddress", listAddress);
        request.setAttribute("selectedAddressId", selectedAddressId);
        request.setAttribute("orderNote", orderNote);

        // ================= VOUCHER LIST =================
        VoucherService voucherService = new VoucherService();
        int userId = user.getId();

        request.setAttribute("listVoucherDiscount", voucherService.filterVoucherValid(cart, totalBill, voucherService.listVoucherDiscountUser(userId)));

        request.setAttribute("listVoucherShip", voucherService.filterVoucherValid(cart, totalBill, voucherService.listVoucherShipUser(userId)));

        request.getRequestDispatcher("user/ThanhToan.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}