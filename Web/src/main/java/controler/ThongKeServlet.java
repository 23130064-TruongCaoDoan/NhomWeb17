package controler;

import DTO.RevenueDTO;
import Service.EventService;
import Service.ThongKeService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ThongKe", value = "/ThongKe")
public class ThongKeServlet extends HttpServlet {
    private final ThongKeService service = new ThongKeService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EventService eventService = new EventService();
        eventService.updatBookPriceForEvent();
        request.setAttribute("totalRevenue", service.getTotalRevenue());
        request.setAttribute("top10Customers", service.getTop10Users());
        request.setAttribute("topCustomer", service.getTopCustomer());
        request.setAttribute("bestBook", service.getBestSeller());
        request.setAttribute("worstBook", service.getWorstSeller());
        request.setAttribute("top10Books", service.getTop10Books());

        String type = request.getParameter("type");
        if (type == null) type = "month";
        request.setAttribute("type", type);

        var revenueData = service.getRevenue(type);
        request.setAttribute("revenueData", revenueData);

        double min = revenueData.stream()
                .mapToDouble(RevenueDTO::getRevenue)
                .min()
                .orElse(0);

        double max = revenueData.stream()
                .mapToDouble(RevenueDTO::getRevenue)
                .max()
                .orElse(0);

        double range = max - min;
        if (range == 0) range = 1;
        request.setAttribute("minRevenue", min);
        request.setAttribute("rangeRevenue", range);
        request.setAttribute("singleBar", revenueData.size() == 1);

        request.getRequestDispatcher("admin/ThongKe.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}