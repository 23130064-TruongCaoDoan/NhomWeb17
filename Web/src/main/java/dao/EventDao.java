package dao;

import model.Event;

import java.util.List;

public class EventDao extends BaseDao{
    public Event getEventById(int eventId) {
        return getJdbi().withHandle(handle ->
                        handle.createQuery("SELECT * FROM events WHERE id = :id")
                                .bind("id",eventId)
                                .mapToBean(Event.class)
                                .findOne()
                                .orElse(null)
        );
    }


    public List<Event> getListEvent(){
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM events WHERE start_date <= NOW() AND end_date >= NOW() ORDER BY start_date DESC")
                        .mapToBean(Event.class)
                        .list()
        );
    }

    public List<Event> getListEventALl(){
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM events ORDER BY start_date DESC")
                        .mapToBean(Event.class)
                        .list()
        );
    }
    public static void main(String[] args) {
        EventDao eventDao = new EventDao();
        System.out.println(eventDao.getListEvent());
    }


    public boolean deleteEvent(int id) {
        return getJdbi().inTransaction(handle -> {

            int count = handle.createUpdate(
                    "DELETE FROM events WHERE id = :id"
            ).bind("id", id).execute();

            return count > 0;
        });
    }
}
