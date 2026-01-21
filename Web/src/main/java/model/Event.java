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
    private String type_book_apply;
    private String pulisher_apply;
    private String author_apply;
    private int voucher_code;
    private int special_voucher;
    private int min_point;

    public Event() {
    }

    public Event(int id, String eventCode, String imgUrl, String title, double value, String startDate, String endDate, String type_book_apply, String pulisher_apply, String author_apply, int voucher_code, int special_voucher, int min_point) {
        this.id = id;
        this.eventCode = eventCode;
        this.imgUrl = imgUrl;
        this.title = title;
        this.value = value;
        this.startDate = startDate;
        this.endDate = endDate;
        this.type_book_apply = type_book_apply;
        this.pulisher_apply = pulisher_apply;
        this.author_apply = author_apply;
        this.voucher_code = voucher_code;
        this.special_voucher = special_voucher;
        this.min_point = min_point;
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

    public String getType_book_apply() {
        return type_book_apply;
    }

    public void setType_book_apply(String type_book_apply) {
        this.type_book_apply = type_book_apply;
    }

    public String getPulisher_apply() {
        return pulisher_apply;
    }

    public void setPulisher_apply(String pulisher_apply) {
        this.pulisher_apply = pulisher_apply;
    }

    public String getAuthor_apply() {
        return author_apply;
    }

    public void setAuthor_apply(String author_apply) {
        this.author_apply = author_apply;
    }

    public int getVoucher_code() {
        return voucher_code;
    }

    public void setVoucher_code(int voucher_code) {
        this.voucher_code = voucher_code;
    }

    public int getSpecial_voucher() {
        return special_voucher;
    }

    public void setSpecial_voucher(int special_voucher) {
        this.special_voucher = special_voucher;
    }

    public int getMin_point() {
        return min_point;
    }

    public void setMin_point(int min_point) {
        this.min_point = min_point;
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
                ", eventCode='" + eventCode + '\'' +
                ", imgUrl='" + imgUrl + '\'' +
                ", title='" + title + '\'' +
                ", value=" + value +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", type_book_apply='" + type_book_apply + '\'' +
                ", pulisher_apply='" + pulisher_apply + '\'' +
                ", author_apply='" + author_apply + '\'' +
                ", voucher_code=" + voucher_code +
                ", special_voucher=" + special_voucher +
                ", min_point=" + min_point +
                '}';
    }
}
