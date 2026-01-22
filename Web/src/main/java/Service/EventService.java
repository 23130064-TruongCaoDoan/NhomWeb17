package Service;

import dao.EventDao;
import jakarta.servlet.http.Part;
import model.Book;
import model.Event;

import java.util.List;

public class EventService {
    private EventDao eventDao = new EventDao();
    private UploadService uploadService = new UploadService();

    public Event getEventById(int eventId) {
        return eventDao.getEventById(eventId);
    }

    public List<Event> getListEvent() {
        return eventDao.getListEvent();
    }

    public List<Event> getListEventALl() {
        return eventDao.getListEventALl();
    }

    public boolean deleteEvent(int id) {
        return eventDao.deleteEvent(id);
    }


    public boolean addEvent(String code, Part imagePart, String title, double value, String startDate, String endDate, String typeBookApply, String pulisher, String author, String voucher, String specialVoucher, int minPoint, String age) {
        String coverImgUrl = uploadService.upload(imagePart, "event/");
        BookService  bookService = new BookService();
        List<Book> listBookEvent = bookService.filterBooksForEvent(bookService.getAllBooks(),typeBookApply,pulisher,author,age);
        bookService.updateDiscountBook(listBookEvent, value);
        return eventDao.addEvent( code,  coverImgUrl,  title,  value,  startDate,  endDate,  typeBookApply,  pulisher,  author,  voucher,  specialVoucher,  minPoint,  age, listBookEvent);
    }

    public boolean existsByCode(String code) {
        return eventDao.existsByCode(code);
    }


}
