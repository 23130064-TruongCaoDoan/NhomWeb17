package model;

import java.time.LocalDate;

public class Event {
    private int id;
    private String eventCode;
    private String imgUrl;
    private String title;
    private double value;
    private String startDate;
    private String endDate;

    public Event() {
    }

    public Event(int id, String eventCode, String imgUrl, String title, double value, String startDate, String endDate) {
        this.id = id;
        this.eventCode = eventCode;
        this.imgUrl = imgUrl;
        this.title = title;
        this.value = value;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEventCode() {
        return eventCode;
    }

    public void setEventCode(String eventCode) {
        this.eventCode = eventCode;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getStartDateFormatted() {
        if (startDate == null || startDate.isEmpty()) return "";
        return startDate.substring(8, 10) + "/" +
                startDate.substring(5, 7) + "/" +
                startDate.substring(0, 4);
    }

    public String getEndDateFormatted() {
        if (endDate == null || endDate.isEmpty()) return "";
        return endDate.substring(8, 10) + "/" +
                endDate.substring(5, 7) + "/" +
                endDate.substring(0, 4);
    }
    public boolean isActive() {
        if (startDate == null || endDate == null) return false;

        LocalDate today = LocalDate.now();
        LocalDate start = LocalDate.parse(startDate);
        LocalDate end = LocalDate.parse(endDate);

        return !today.isBefore(start) && !today.isAfter(end);
    }

    @Override
    public String toString() {
        return "Event{" +
                "id=" + id +
                ", eventcode='" + eventCode + '\'' +
                ", imgUrl='" + imgUrl + '\'' +
                ", title='" + title + '\'' +
                ", value=" + value +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                '}';
    }
}
