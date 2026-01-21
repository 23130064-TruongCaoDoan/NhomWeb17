package controler.event;

import Service.EventService;
import dao.EventDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Event;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "event", value = "/event")
public class EventServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EventService eventService = new EventService();
        List<Event> listEvent = eventService.getListEventALl();
        request.setAttribute("listEvent",listEvent);
        request.getRequestDispatcher("admin/events.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

