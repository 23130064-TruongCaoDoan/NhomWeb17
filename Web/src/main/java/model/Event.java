package model;

public class Event {
    private int id;
    private String imgUrl;
    private String title;
    private double value;
    private String startDate;
    private String endDate;

    public Event(int id, String imgUrl, String title, double value, String startDate, String endDate) {
        this.id = id;
        this.imgUrl = imgUrl;
        this.title = title;
        this.value = value;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public Event() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getimgUrl() {
        return imgUrl;
    }

    public void setimgUrl(String imgUrl) {
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

    @Override
    public String toString() {
        return "Event{" +
                "id=" + id +
                ", imgUrl='" + imgUrl + '\'' +
                ", title='" + title + '\'' +
                ", value=" + value +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                '}';
    }
}
