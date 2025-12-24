package controler.admin;

import Service.VoucherService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Voucher;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SortVoucherType", value = "/SortVoucherType")
public class SortVoucherType extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VoucherService voucherService = new VoucherService();
        String type = request.getParameter("type")==null?"":request.getParameter("type");
        List<Voucher> listVoucher;
        if(type.trim().equals("")){
            listVoucher=voucherService.getListVoucher();
        }
        else {
            listVoucher=voucherService.getListVoucherSortType(type);
        }
        request.setAttribute("listVoucher",listVoucher);
        request.setAttribute("selectedType",type);
        request.getRequestDispatcher("admin/khoVoucher.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}