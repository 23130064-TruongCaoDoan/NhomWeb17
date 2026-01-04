package model;

import java.time.LocalDateTime;

public class Order {
    private int id;
    private int userId;
    private LocalDateTime orderDate;
    private String status;
    private double totalAmount;
    private String note;
    private String disVoucherId;
    private String shipVoucherId;

    public Order(int id, int userId, LocalDateTime orderDate, String status, double totalAmount, String note, String disVoucherId, String shipVoucherId) {
        this.id = id;
        this.userId = userId;
        this.orderDate = orderDate;
        this.status = status;
        this.totalAmount = totalAmount;
        this.note = note;
        this.disVoucherId = disVoucherId;
        this.shipVoucherId = shipVoucherId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getDisVoucherId() {
        return disVoucherId;
    }

    public void setDisVoucherId(String disVoucherId) {
        this.disVoucherId = disVoucherId;
    }

    public String getShipVoucherId() {
        return shipVoucherId;
    }

    public void setShipVoucherId(String shipVoucherId) {
        this.shipVoucherId = shipVoucherId;
    }
}
