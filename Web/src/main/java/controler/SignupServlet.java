package controler;

import Util.Token8;
import Service.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import Util.EmailSender;

import java.io.IOException;

@WebServlet(name = "dangki", value = "/dangki")
public class SignupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("user/enroll.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname")==null?"":request.getParameter("fullname");
        String email = request.getParameter("email")==null?"":request.getParameter("email");
        String password = request.getParameter("password")==null?"":request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password")==null?"":request.getParameter("confirm-password");
        UserService userService = new UserService();
        EmailSender emailSender =new EmailSender();
        Token8 token = new Token8();
        HttpSession session = request.getSession();
        if(!userService.checkExit(email)&&(password.equals(confirmPassword))){
            String verifyCode=token.generateToken8();
            session.setAttribute("verifyCode", verifyCode);
            session.setAttribute("email", email);
            session.setAttribute("fullname", fullname);
            session.setAttribute("password", password);
            emailSender.sendVerificationEmail(email,"Mã xác thực tài khoản",fullname,verifyCode,"Mã xác thực:","Cảm ơn bạn đã đăng ký");
            request.setAttribute("showOTP", true);
            request.getRequestDispatcher("user/enroll.jsp").forward(request, response);
        }
        else{
            request.setAttribute("type","danger");
            request.setAttribute("message","Tài khoản đã tồn tại");
            request.setAttribute("fullname",fullname);
            request.setAttribute("password",password);
            request.setAttribute("confirmPassword",confirmPassword);
            request.getRequestDispatcher("user/enroll.jsp").forward(request, response);
        }
    }
}