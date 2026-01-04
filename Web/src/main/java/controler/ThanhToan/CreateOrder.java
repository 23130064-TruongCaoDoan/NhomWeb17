package controler.ThanhToan;

import Cart.Cart;
import Service.OrderService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.User;
import model.Voucher;

import java.io.IOException;

@WebServlet(name = "CreateOrder", value = "/CreateOrder")
public class CreateOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        Cart cart = (Cart) session.getAttribute("cart");

        if (user == null || cart == null || cart.getItems().isEmpty()) {
            response.sendRedirect("cart.jsp");
            return;
        }

        int addressId = Integer.parseInt(request.getParameter("addressId"));
        String shipType = request.getParameter("shipType");
        boolean usePoint = "1".equals(request.getParameter("usePoint"));
        String note = request.getParameter("orderNote");

        double shipFee = Double.parseDouble(request.getParameter("shipFee"));
        String pointUsedStr = request.getParameter("pointUsed");
        int pointUsed = (int) Double.parseDouble(pointUsedStr);
        double finalTotal = Double.parseDouble(request.getParameter("finalTotal"));
        String deliveryRange = request.getParameter("deliveryRange");

        Voucher dis = (Voucher) session.getAttribute("appliedDiscountVoucher");
        Voucher ship = (Voucher) session.getAttribute("appliedShipVoucher");

        int disid = dis==null?0:dis.getId();
        int shipid = ship==null?0:ship.getId();

        int userId = user.getId();


        if (usePoint && pointUsed > 0) {
            user.setPoint(user.getPoint() - pointUsed);
        }


        OrderService  orderService = new OrderService();
        boolean check=orderService.addOrder(userId,finalTotal,note,disid,shipid,addressId,shipType,shipFee,deliveryRange);

        session.removeAttribute("cart");
        session.removeAttribute("appliedDiscountVoucher");
        session.removeAttribute("appliedShipVoucher");

        if (check) {
            response.sendRedirect("home");
        }

        response.sendRedirect("ThanhToan");
    }
}