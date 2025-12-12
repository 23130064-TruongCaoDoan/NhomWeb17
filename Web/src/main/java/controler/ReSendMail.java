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
        HttpSession session = request.getSession();
        Token16 token =new Token16();
        EmailSender emailSender = new EmailSender();
        String verifyCode=token.generateToken16();
        session.setAttribute("verifyCode", verifyCode);
        String email = session.getAttribute("email").toString();
        String fullname = session.getAttribute("fullname").toString();
        String password = session.getAttribute("password").toString();
        emailSender.sendVerificationEmail(email,"Mã xác thực tài khoản",fullname,verifyCode);

        request.getRequestDispatcher("errol.jsp").forward(request,response);

    }
}