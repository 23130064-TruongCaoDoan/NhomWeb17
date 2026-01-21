<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Event</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
    <link rel="stylesheet" href="assets/css_admin/events.css">
    <link rel="stylesheet" href="assets/css_admin/admin.css">
</head>
<body>
<main>
    <c:import url="headerAdmin.jsp"></c:import>
    <div class="content">
        <c:import url="MenuFunctionAdmin.jsp"></c:import>
        <div class="event-container">
            <h2>Quản lý Sự kiện</h2>

            <div class="function">
                <button id="addEvent">Thêm sự kiện</button>
                <div class="timkiem">
                    <input type="text" class="search" placeholder="Tìm kiếm sự kiện">
                    <button class="buttonSearch">Tìm kiếm</button>
                </div>
            </div>

            <div class="event-list">
                <div class="title">
                    <h3>Danh sách sự kiện</h3>
                    <select class="locEvent">
                        <option value="all">Tất cả</option>
                        <option value="latest">Sự kiện gần nhất</option>
                        <option value="oldest">Sự kiện cũ nhất</option>
                    </select>
                </div>

                <div class="table-wrapper">
                    <table>
                        <thead>
                        <tr>
                            <th>Mã sự kiện</th>
                            <th>Tiêu đề</th>
                            <th>Giá trị</th>
                            <th>Thời gian</th>
                            <th>Hoạt động</th>
                            <th>Loại sách áp dụng</th>
                            <th>Chỉnh sửa</th>
                        </tr>
                        </thead>
                        <tbody id="eventTable">
                        <c:forEach var="event" items="${listEvent}">
                            <tr>
                                <td>${event.eventCode}</td>
                                <td>${event.title}</td>
                                <td>${event.value}%</td>
                                <td>${event.getStartDateFormatted()} - ${event.getEndDateFormatted()}</td>
                                <td>
                                    <c:if test="${event.isActive()}">
                                        <span class="status active">Đang diễn ra</span>
                                    </c:if>
                                    <c:if test="${!event.isActive()}">
                                        <span class="status inactive">Đã kết thúc</span>
                                    </c:if>
                                </td>
                                <td>Sach To Mau</td>
                                <td>
                                    <i class="fa-solid fa-pen sua"></i>
                                    <i class="fa-solid fa-trash xoa"></i>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div id="overlay"></div>
    <div id="eventForm">
        <div class="form-group">
            <label>Mã sự kiện</label>
            <input type="text" id="eventCode" placeholder="Nhập mã sự kiện" required>
        </div>

        <div class="form-group">
            <label>Tiêu đề</label>
            <input type="text" id="eventTitle" placeholder="Tiêu đề sự kiện" required>
        </div>

        <div class="form-group">
            <label>Giá trị (%)</label>
            <input type="number" id="eventValue" placeholder="30" required>
        </div>

        <div class="form-group-inline">
            <div>
                <label>Ngày bắt đầu</label>
                <input type="date" id="startDate" required>
            </div>
            <div>
                <label>Ngày kết thúc</label>
                <input type="date" id="endDate" required>
            </div>
        </div>

        <div class="form-group anh">
            <label>Ảnh sự kiện</label>
            <input type="file" id="eventImage" accept="image/*">
        </div>

        <div class="form-group">
            <label>Loại sách áp dụng</label>
            <input id="typeBook" placeholder="Nhập các tên loại, cách nhau bằng dấu phẩy...">
        </div>
        <div class="form-group">
            <label>Loại sách theo độ tuổi đc áp dụng</label>
            <input id="ageBook" placeholder="Nhập các tên loại, cách nhau bằng dấu phẩy...">
        </div>
        <div class="form-group">
            <label>Nhà xuất bản áp dụng</label>
            <input id="bookCodes" placeholder="Nhập các tên nhà xuất bảng, cách nhau bằng dấu phẩy...">
        </div>
        <div class="form-group">
            <label>Mã voucher tặng chung</label>
            <input type="text" id="voucherCode" placeholder="Nhập mã voucher">
        </div>

        <div class="form-group-inline">
            <div>
                <label>Điều kiện point</label>
                <input type="number" id="minPoint" placeholder="Điềm từ...">
            </div>
            <div>
                <label>Các mã voucher dành riêng</label>
                <input type="text" id="specialVoucher" placeholder="Nhập các mã voucher (cách nhau bằng dấu phẩy)">
            </div>
        </div>

        <button type="submit" class="btn-save">Lưu sự kiện</button>
    </div>
</main>
<script>
    const overlay = document.getElementById("overlay");
    const add = document.getElementById("addEvent")
    const sua = document.querySelector(".sua")
    const popup = document.getElementById("eventForm");


    overlay.addEventListener('click', () => {
        overlay.style.display = "none";
        popup.style.display = "none";
    });
    sua.addEventListener('click', () => {
        overlay.style.display = "block";
        popup.style.display = "block";
    })
    add.addEventListener('click', () => {
        overlay.style.display = "block";
        popup.style.display = "block";
    })

</script>
</body>
</html>