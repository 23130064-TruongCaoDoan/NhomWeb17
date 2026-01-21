package Service;

import dao.EventDao;
import model.Event;

import java.util.List;

public class EventService {
    EventDao eventDao = new EventDao();
    public Event getEventById(int eventId){
            return eventDao.getEventById(eventId);
    }
    public List<Event> getListEvent(){
        return eventDao.getListEvent();
    }
    public List<Event> getListEventALl(){
        return eventDao.getListEventALl();
    }

}
