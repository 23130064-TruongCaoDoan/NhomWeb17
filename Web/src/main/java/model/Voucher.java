package model;

public class Voucher {
    private int id;
    private String code;
    private String description;
    private int conditionPrice;
    private String conditionBook;
    private String conditionPublisher;
    private String start_date;
    private String end_date;
    private int usage;

    public Voucher(int id, String code, String description, int conditionPrice, String conditionBook, String conditionPublisher, String start_date, String end_date, int usage) {
        this.id = id;
        this.code = code;
        this.description = description;
        this.conditionPrice = conditionPrice;
        this.conditionBook = conditionBook;
        this.conditionPublisher = conditionPublisher;
        this.start_date = start_date;
        this.end_date = end_date;
        this.usage = usage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getConditionPrice() {
        return conditionPrice;
    }

    public void setConditionPrice(int conditionPrice) {
        this.conditionPrice = conditionPrice;
    }

    public String getConditionBook() {
        return conditionBook;
    }

    public void setConditionBook(String conditionBook) {
        this.conditionBook = conditionBook;
    }

    public String getConditionPublisher() {
        return conditionPublisher;
    }

    public void setConditionPublisher(String conditionPublisher) {
        this.conditionPublisher = conditionPublisher;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public int getUsage() {
        return usage;
    }

    public void setUsage(int usage) {
        this.usage = usage;
    }
}
