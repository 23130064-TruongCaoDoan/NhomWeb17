package controler;

import Service.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Verify", value = "/Verify")
public class Verify extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null) {
            request.setAttribute("message", "Phiên xác thực đã hết hạn. Vui lòng đăng ký lại.");
            request.setAttribute("type", "danger");
            request.getRequestDispatcher("errol.jsp").forward(request, response);
            return;
        }
        String verifyCode = session.getAttribute("verifyCode").toString();
        String email = session.getAttribute("email").toString();
        String fullname = session.getAttribute("fullname").toString();
        String password = session.getAttribute("password").toString();
        String otp =request.getParameter("otp");
        UserService userService = new UserService();
        if (verifyCode == null || email == null || fullname == null || password == null) {
            request.setAttribute("message", "Phiên xác thực không hợp lệ. Vui lòng đăng ký lại.");
            request.setAttribute("type", "danger");
            request.getRequestDispatcher("errol.jsp").forward(request, response);
            return;
        }

        if(otp.isEmpty()){
            request.setAttribute("showOTP", true);
            request.setAttribute("error", "Vui lòng nhập mã xác thực!");
            request.getRequestDispatcher("errol.jsp").forward(request, response);
            return;
        }
        if (otp.equals(verifyCode)) {
            userService.addUser(fullname, email, password);
            session.removeAttribute("verifyCode");
            session.removeAttribute("email");
            session.removeAttribute("fullname");
            session.removeAttribute("password");
            request.setAttribute("message","Đăng kí thành công");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.setAttribute("showOTP", true);
            request.setAttribute("error", "Mã xác thực không đúng!");
            request.getRequestDispatcher("errol.jsp").forward(request, response);
        }
    }
}