package controler;

import Service.Token16;
import Service.UserService;
import jakarta.mail.Session;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import Service.EmailSender;

import java.io.IOException;

@WebServlet(name = "dangki", value = "/dangki")
public class SignupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/errol.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname")==null?"":request.getParameter("fullname");
        String email = request.getParameter("email")==null?"":request.getParameter("email");
        String password = request.getParameter("password")==null?"":request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password")==null?"":request.getParameter("confirm-password");
        UserService userService = new UserService();
        EmailSender emailSender =new EmailSender();
        Token16 token = new Token16();
        HttpSession session = request.getSession();
        if(!userService.checkExit(email)&&(password.equals(confirmPassword))){
            String verifyCode=token.generateToken16();
            session.setAttribute("verifyCode", verifyCode);
            session.setAttribute("email", email);
            session.setAttribute("fullname", fullname);
            session.setAttribute("password", password);
            emailSender.sendVerificationEmail(email,"Mã xác thực tài khoản",fullname,verifyCode);
            request.setAttribute("showOTP", true);
            request.setAttribute("email", email);
            request.getRequestDispatcher("errol.jsp").forward(request, response);
        }
        else{
            request.setAttribute("type","danger");
            request.setAttribute("message","Tài khoản đã tồn tại");
            request.setAttribute("fullname",fullname);
            request.setAttribute("email",email);
            request.setAttribute("password",password);
            request.setAttribute("confirmPassword",confirmPassword);
            request.getRequestDispatcher("errol.jsp").forward(request, response);
        }
    }
}