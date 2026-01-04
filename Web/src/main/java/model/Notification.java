package model;

import java.time.LocalDateTime;

public class Notification {

    private Integer notiId;
    private Integer userId;
    private String title;
    private String noti;
    private LocalDateTime createdAt;

    public Notification() {
    }

    public Notification(Integer userId, String title, String noti, LocalDateTime createdAt) {
        this.userId = userId;
        this.title = title;
        this.noti = noti;
        this.createdAt = createdAt;
    }

    public Integer getNotiId() {
        return notiId;
    }

    public void setNotiId(Integer notiId) {
        this.notiId = notiId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getNoti() {
        return noti;
    }

    public void setNoti(String noti) {
        this.noti = noti;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
}

