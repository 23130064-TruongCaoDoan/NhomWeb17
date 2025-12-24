package controler.admin;

import Service.VoucherService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Voucher;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SortVoucherTime", value = "/SortVoucherTime")
public class SortVoucherTime extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VoucherService voucherService = new VoucherService();
        String type = request.getParameter("type"); // "1", "2" hoặc ""
        List<Voucher> listVoucher;

        if (type == null || type.trim().equals("")) {
            listVoucher = voucherService.getListVoucher();
        } else {
            String sortOrder = "";
            if (type.equals("1")) sortOrder = "DESC";
            else if (type.equals("2")) sortOrder = "ASC";
            listVoucher = voucherService.getListVoucherSortTime(sortOrder);
        }

        request.setAttribute("selectedTime", type);
        request.setAttribute("listVoucher", listVoucher);
        request.getRequestDispatcher("admin/khoVoucher.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}