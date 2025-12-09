package model;
import java.util.Date;

public class Book {
    private int id;
    private String model;
    private String title;
    private String author;
    private double price;
    private double priceDiscounted;
    private String type;
    private int age;
    private String coverImgUrl;
    private String description;
    private String publisher;
    private String provider;
    private Date publishedDate;
    private double weight;
    private String bookSize;
    private int pagesNumber;
    private String format;
    private boolean isSell;

    // Constructor mặc định
    public Book() {
    }

    // Constructor đầy đủ
    public Book(int id, String model, String title, String author, double price, double priceDiscounted,
                String type, int age, String coverImgUrl, String description, String publisher,
                String provider, Date publishedDate, double weight, String bookSize,
                int pagesNumber, String format, boolean isSell) {
        this.id = id;
        this.model = model;
        this.title = title;
        this.author = author;
        this.price = price;
        this.priceDiscounted = priceDiscounted;
        this.type = type;
        this.age = age;
        this.coverImgUrl = coverImgUrl;
        this.description = description;
        this.publisher = publisher;
        this.provider = provider;
        this.publishedDate = publishedDate;
        this.weight = weight;
        this.bookSize = bookSize;
        this.pagesNumber = pagesNumber;
        this.format = format;
        this.isSell = isSell;
    }
    // Getter và Setter cho tất cả thuộc tính
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getModel() { return model; }
    public void setModel(String model) { this.model = model; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public double getPriceDiscounted() { return priceDiscounted; }
    public void setPriceDiscounted(double priceDiscounted) { this.priceDiscounted = priceDiscounted; }

    public String getType() { return type; }
    public void setType(String type) { this.type = type; }

    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }

    public String getCoverImgUrl() { return coverImgUrl; }
    public void setCoverImgUrl(String coverImgUrl) { this.coverImgUrl = coverImgUrl; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getPublisher() { return publisher; }
    public void setPublisher(String publisher) { this.publisher = publisher; }

    public String getProvider() { return provider; }
    public void setProvider(String provider) { this.provider = provider; }

    public Date getPublishedDate() { return publishedDate; }
    public void setPublishedDate(Date publishedDate) { this.publishedDate = publishedDate; }

    public double getWeight() { return weight; }
    public void setWeight(double weight) { this.weight = weight; }

    public String getBookSize() { return bookSize; }
    public void setBookSize(String bookSize) { this.bookSize = bookSize; }

    public int getPagesNumber() { return pagesNumber; }
    public void setPagesNumber(int pagesNumber) { this.pagesNumber = pagesNumber; }

    public String getFormat() { return format; }
    public void setFormat(String format) { this.format = format; }

    public boolean getSell() { return isSell; }
    public void setSell(boolean isSell) { this.isSell = isSell; }

    @Override
    public String toString() {
        return "Book{" +
                "id='" + id + '\'' +
                ", model='" + model + '\'' +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", price=" + price +
                ", priceDiscounted=" + priceDiscounted +
                ", type='" + type + '\'' +
                ", age=" + age +
                ", coverImgUrl='" + coverImgUrl + '\'' +
                ", description='" + description + '\'' +
                ", publisher='" + publisher + '\'' +
                ", provider='" + provider + '\'' +
                ", publishedDate=" + publishedDate +
                ", weight=" + weight +
                ", bookSize='" + bookSize + '\'' +
                ", pagesNumber=" + pagesNumber +
                ", format='" + format + '\'' +
                ", sell=" + isSell +
                '}';
    }
}

