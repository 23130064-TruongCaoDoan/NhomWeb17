package controler.admin;

import Service.VoucherService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "addVoucher", value = "/addVoucher")
public class addVoucher extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VoucherService voucherService = new VoucherService();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        String code = request.getParameter("code");
        String description = request.getParameter("description");

        int conditionPrice = Integer.parseInt(request.getParameter("gia")==null?"0":request.getParameter("gia"));
        String conditionBook = request.getParameter("loaisach");
        String conditionPublisher = request.getParameter("nxb");

        String start_date = request.getParameter("start_date");
        String end_date = request.getParameter("end_date");

        int usage_limit = Integer.parseInt(request.getParameter("usage_limit")==null?"0":request.getParameter("usage_limit"));
        double value = Double.parseDouble(request.getParameter("value")==null?"0":request.getParameter("value"));
        String type = request.getParameter("type");
        boolean success = voucherService.addVoucher(code, description, conditionPrice, conditionBook, conditionPublisher, start_date, end_date, usage_limit, value,type);
        String json;
        if (success) {
            json = "{\"success\":true,\"message\":\"Thêm voucher thành công\"}";
        } else {
            json = "{\"success\":false,\"message\":\"Thêm voucher thất bại\"}";
        }
        response.getWriter().write(json);
    }
}