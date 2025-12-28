package model;


public class CommentView {
    private  String name;
    private  int rating;
    private  String content;
    private String createAt;

    public CommentView(String name, int rating, String content, String createAt) {
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

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "CommentView{" +
                "name='" + name + '\'' +
                ", rating=" + rating +
                ", content='" + content + '\'' +
                ", createAt=" + createAt +
                '}';
    }
}
