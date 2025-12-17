package model;

import java.time.LocalDate;

public class CommentView {
    private  String name;
    private  int rating;
    private  String content;
    private LocalDate createAt;

    public CommentView(String name, int rating, String content, LocalDate createAt) {
        this.name = name;
        this.rating = rating;
        this.content = content;
        this.createAt = createAt;
    }
    public CommentView() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public LocalDate getCreateAt() {
        return createAt;
    }

    public void setCreateAt(LocalDate createAt) {
        this.createAt = createAt;
    }
}
