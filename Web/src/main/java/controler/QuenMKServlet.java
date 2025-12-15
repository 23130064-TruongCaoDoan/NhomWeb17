package controler;

import Service.EmailSender;
import Service.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.User;

import java.io.IOException;

@WebServlet(name = "quenMK", value = "/quenMK")
public class QuenMKServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email=request.getParameter("emailMK");
        UserService userService=new UserService();
        if(userService.checkExit(email)){
            User user =userService.findUser(email);
            EmailSender  emailSender=new EmailSender();
            emailSender.sendVerificationEmail(email,"Mật khẩu khôi phục",user.getName(), user.getPassword_hash(), "Mật khẩu:","Vui lòng không cung cấp cho bất cứ ai");
            request.setAttribute("message", "Mật khẩu đã được gửi tới email của bạn");
        }
        else{
            request.setAttribute("openQMKPopup", true);
            request.setAttribute("errorMail", "Email này chưa được đăng ký");
        }
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }
}