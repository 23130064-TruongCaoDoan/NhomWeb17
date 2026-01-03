package controler.admin;

import Service.UserService;
import Service.VoucherService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.User;
import model.Voucher;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "KhoVoucher", value = "/KhoVoucher")
public class KhoVoucher extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        User user = (User)session.getAttribute("user")==null?null:(User)session.getAttribute("user");
        UserService userService = new UserService();
        if (session != null && user != null && userService.checkRole(user)) {
        VoucherService voucherService = new VoucherService();
        List<Voucher> listVoucher=voucherService.getListVoucher();
        request.setAttribute("listVoucher",listVoucher);
        request.getRequestDispatcher("admin/khoVoucher.jsp").forward(request, response);
        }
        else {
            response.sendRedirect("login");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}