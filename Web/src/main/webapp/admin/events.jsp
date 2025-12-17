<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <header>
        <div class="logo left"><img src="assets/img/logo/logoChinh.png" alt="logo"></div>
        <div class="right">
            <i class="fa-solid fa-user"></i>
            <div class="ten">admin</div>
            <button class="dangxuat" onclick="window.location='loginAdmin.html'">Đăng xuất</button>
        </div>
    </header>
    <div class="content">
        <div class="Menu">
            <div class="title"><span>CHỨC NĂNG</span></div>
            <div class="menfunction">
                <a href="ThongKe.html" class="function thongke">Thống kê</a>
                <a href="ManageProduct.html" class="function qlsanpham">Quản lý sản phẩm</a>
                <a href="user.html" class="function qlkhachhang">Quản lý khách hàng</a>
                <a href="quanlidonhang.html" class="function qldonhang">Quản lý đơn hàng</a>
                <a href="khoVoucher.html" class="function storeVoucher">Kho Voucher</a>
                <a href="events.html" class="function event">Sự kiện</a>
                <a href="DanhGia.html" class="function rating">Đánh giá</a>
            </div>
        </div>
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
                            <th>Loại sách áp dụng</th>
                            <th>Chỉnh sửa</th>
                        </tr>
                        </thead>
                        <tbody id="eventTable">
                        <tr>
                            <td>EVENT01</td>
                            <td>Giảm giá Black Friday</td>
                            <td>30%</td>
                            <td>2025-11-10 → 2025-11-20</td>
                            <td>Sach To Mau</td>
                            <td>
                                <i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>EVENT01</td>
                            <td>Giảm giá Black Friday</td>
                            <td>30%</td>
                            <td>2025-11-10 → 2025-11-20</td>
                            <td>Sach To Mau</td>
                            <td>
                                <i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>EVENT01</td>
                            <td>Giảm giá Black Friday</td>
                            <td>30%</td>
                            <td>2025-11-10 → 2025-11-20</td>
                            <td>Sach To Mau</td>
                            <td>
                                <i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>EVENT01</td>
                            <td>Giảm giá Black Friday</td>
                            <td>30%</td>
                            <td>2025-11-10 → 2025-11-20</td>
                            <td>Sach To Mau</td>
                            <td>
                                <i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>EVENT01</td>
                            <td>Giảm giá Black Friday</td>
                            <td>30%</td>
                            <td>2025-11-10 → 2025-11-20</td>
                            <td>Sach To Mau</td>
                            <td>
                                <i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>EVENT01</td>
                            <td>Giảm giá Black Friday</td>
                            <td>30%</td>
                            <td>2025-11-10 → 2025-11-20</td>
                            <td>Sach To Mau</td>
                            <td>
                                <i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>EVENT01</td>
                            <td>Giảm giá Black Friday</td>
                            <td>30%</td>
                            <td>2025-11-10 → 2025-11-20</td>
                            <td>Sach To Mau</td>
                            <td>
                                <i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>EVENT01</td>
                            <td>Giảm giá Black Friday</td>
                            <td>30%</td>
                            <td>2025-11-10 → 2025-11-20</td>
                            <td>Sach To Mau</td>
                            <td>
                                <i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i>
                            </td>
                        </tr>
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