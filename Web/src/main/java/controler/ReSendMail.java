package controler;

import Service.EmailSender;
import Service.Token16;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ReSendMail", value = "/ReSendMail")
public class ReSendMail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        String email = session.getAttribute("email").toString();
        String fullname = session.getAttribute("fullname").toString();
        if (session == null ||
                email == null ||
                fullname == null) {

            request.setAttribute("type", "danger");
            request.setAttribute("message", "Phiên xác thực đã hết hạn. Vui lòng đăng ký lại.");
            request.getRequestDispatcher("errol.jsp").forward(request, response);
            return;
        }
        Token16 token = new Token16();
        EmailSender emailSender = new EmailSender();
        String verifyCode = token.generateToken16();
        session.setAttribute("verifyCode", verifyCode);
        emailSender.sendVerificationEmail(email, "Mã xác thực tài khoản", fullname, verifyCode);
        request.setAttribute("showOTP", true);
        request.setAttribute("error", "Đã gửi lại mã");
        request.getRequestDispatcher("errol.jsp").forward(request, response);

    }
}