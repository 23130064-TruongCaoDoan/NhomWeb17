package controler;

import Service.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.User;

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
        if(!userService.checkExit(email)&&(password.equals(confirmPassword))){
            userService.addUser(fullname,email,password);
            response.sendRedirect("login");
        }
        else{
            request.setAttribute("fullname",fullname);
            request.setAttribute("email",email);
            request.setAttribute("password",password);
            request.setAttribute("confirmPassword",confirmPassword);
            request.getRequestDispatcher("errol.jsp").forward(request, response);
        }
    }
}