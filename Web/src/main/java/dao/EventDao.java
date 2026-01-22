package dao;

import jakarta.servlet.http.Part;
import model.Book;
import model.Event;

import java.util.List;

public class EventDao extends BaseDao {
    public Event getEventById(int eventId) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM events WHERE id = :id")
                        .bind("id", eventId)
                        .mapToBean(Event.class)
                        .findOne()
                        .orElse(null)
        );
    }


    public List<Event> getListEvent() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM events WHERE start_date <= NOW() AND end_date >= NOW() ORDER BY start_date DESC")
                        .mapToBean(Event.class)
                        .list()
        );
    }

    public List<Event> getListEventALl() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM events ORDER BY start_date DESC")
                        .mapToBean(Event.class)
                        .list()
        );
    }
//    public static void main(String[] args) {
//        EventDao eventDao = new EventDao();
//        System.out.println(eventDao.getListEvent());
//
//
//        boolean result = eventDao.addEvent(
//                "EVT_TEST_01",                         // event_code
//                "https://example.com/event.jpg",      // img_url
//                "Sự kiện test thêm mới",               // title
//                15.0,                                  // value
//                "2026-02-01",                          // start_date
//                "2026-02-28",                          // end_date
//                "NOVEL",                               // type_book_apply
//                "NXB Trẻ",                             // pulisher_apply
//                "Nguyễn Nhật Ánh",                     // author_apply
//                "VC_TEST",                             // voucher_code
//                null,                                  // special_voucher
//                50,                                    // min_point
//                "12+"                                  // age_apply
//        );
//
//        if (result) {
//            System.out.println("✅ Add event thành công");
//        } else {
//            System.out.println("❌ Add event thất bại");
//        }
//    }


    public boolean deleteEvent(int id) {
        return getJdbi().inTransaction(handle -> {

            int count = handle.createUpdate(
                    "DELETE FROM events WHERE id = :id"
            ).bind("id", id).execute();

            return count > 0;
        });
    }

    public boolean addEvent(
            String code,
            String coverImgUrl,
            String title,
            double value,
            String startDate,
            String endDate,
            String typeBookApply,
            String pulisher,
            String author,
            String voucher,
            String specialVoucher,
            int minPoint,
            String age,
            List<Book> listBookEvent
    ) {
        return getJdbi().withHandle(handle -> {

            // 1. INSERT EVENT + LẤY event_id
            Integer eventId = handle.createUpdate("""
                                INSERT INTO events(
                                    event_code, img_url, title, value, start_date, end_date,
                                    type_book_apply, pulisher_apply, author_apply,
                                    voucher_code, special_voucher, min_point, age_apply
                                ) VALUES (
                                    :event_code, :img_url, :title, :value, :start_date, :end_date,
                                    :type_book_apply, :pulisher_apply, :author_apply,
                                    :voucher_code, :special_voucher, :min_point, :age_apply
                                )
                            """)
                    .bind("event_code", code)
                    .bind("img_url", coverImgUrl)
                    .bind("title", title)
                    .bind("value", value)
                    .bind("start_date", startDate)
                    .bind("end_date", endDate)
                    .bind("type_book_apply", typeBookApply)
                    .bind("pulisher_apply", pulisher)
                    .bind("author_apply", author)
                    .bind("voucher_code", voucher)
                    .bind("special_voucher", specialVoucher)
                    .bind("min_point", minPoint)
                    .bind("age_apply", age)
                    .executeAndReturnGeneratedKeys("id")   // 🔥 CỘT PK
                    .mapTo(Integer.class)
                    .one();

            if (eventId == null) {
                return false;
            }

            // 2. INSERT event_books
            for (Book b : listBookEvent) {
                handle.createUpdate("""
                                    INSERT INTO event_books(event_id, book_id)
                                    VALUES (:event_id, :book_id)
                                """)
                        .bind("event_id", eventId)
                        .bind("book_id", b.getId())
                        .execute();
            }

            return true;
        });
    }


    public boolean existsByCode(String code) {
        return getJdbi().withHandle(handle ->
                handle.createQuery(
                                "SELECT COUNT(*) FROM events WHERE event_code = :code"
                        )
                        .bind("code", code)
                        .mapTo(Integer.class)
                        .one() > 0
        );
    }
}
