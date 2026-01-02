<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý user</title>
    <link rel="stylesheet" href="assets/css_admin/admin.css">
    <link rel="stylesheet" href="assets/css_admin/user.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
</head>
<body>

<main>
    <header>
        <div class="logo left">
            <img src="assets/img/logo/logoChinh.png" alt="logo">
        </div>
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
        <div class="user">
            <h2>Quản lý khách hàng</h2>
            <form method="get" action="${pageContext.request.contextPath}/user-manage">

                <div class="function">
                    <div>
                        <button id="add" type="button">Tặng voucher</button>
                        <button id="notify" type="button">Tạo thông báo</button>
                    </div>

                    <div class="timkiem">
                        <input type="text"
                               class="search"
                               name="q"
                               placeholder="Tìm kiếm khách hàng"
                               value="${param.q}">
                        <button class="buttonSearch" type="submit">Tìm kiếm</button>
                    </div>
                </div>

                <div class="title">
                    <h3>Danh sách khách hàng</h3>
                    <div>
                        <select class="filter-sp" name="sortStock" onchange="this.form.submit()">
                            <option value="">Tất cả</option>
                            <option value="pAsc"  ${param.sortStock == 'pAsc'  ? 'selected' : ''}>
                                Điểm giảm dần
                            </option>
                            <option value="pDesc" ${param.sortStock == 'pDesc' ? 'selected' : ''}>
                                Điểm tăng dần
                            </option>
                            <option value="mAsc"  ${param.sortStock == 'mAsc'  ? 'selected' : ''}>
                                Tổng tiền giảm dần
                            </option>
                            <option value="mDesc" ${param.sortStock == 'mDesc' ? 'selected' : ''}>
                                Tổng tiền tăng dần
                            </option>
                        </select>
                    </div>
                </div>

            </form>

            <div class="user-list">
                <div class="table-wrapper">
                    <table>
                        <thead>
                        <tr>
                            <th>Mã Khách Hàng</th>
                            <th>Tên Khách Hàng</th>
                            <th>Email</th>
                            <th>Point</th>
                            <th>Tổng tiền mua</th>
                        </tr>
                        </thead>
                        <tbody id="userTable">
                        <c:forEach var="u" items="${users}">
                            <tr class="infUser">
                                <td>${u.customerCode}</td>
                                <td>${u.name}</td>
                                <td>${u.email}</td>
                                <td>${u.point}</td>
                                <td>${u.totalSpent}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div id="overlay"></div>
    <form id="tangVoucherForm" method="post" action="${pageContext.request.contextPath}/gift-voucher">
        <h3>TẶNG VOUCHER</h3>
        <div class="form-group">
            <label>Mã Voucher</label>
            <input type="text" name="voucherCode" placeholder="Nhập mã voucher " required>
        </div>
        <div class="form-group">
            <label>Chọn Khách Hàng</label>
            <div class="cacluaChon">
                <div class="chonAll"><input type="radio" name="chon" value="all"><label>Tất cả khách hàng</label></div>
                <div class="dieukien"><input type="radio" name="chon" value="selected"><input type="text" name="userIds" placeholder="Nhập mã khách hàng (ngăn cách bởi dấu phẩy)"></div>
            </div>
        </div>

        <button type="submit" class="confirm">Xác nhận</button>
    </form>

    <form id="taoThongBao" method="post" action="${pageContext.request.contextPath}/notify-user">
        <h3>THÔNG BÁO</h3>
        <div class="form-group">
            <label>Tiêu Đề</label>
            <input type="text" name="title" placeholder="Nhập tiêu đề" required>
        </div>
        <div class="form-group">
            <label>Mô tả</label>
            <textarea name="content" class="mota" placeholder="Nhập mô tả"></textarea>
        </div>

        <button type="submit" class="confirm">Xác nhận</button>
    </form>

</main>

<script>
    const overlay = document.getElementById("overlay");
    const add = document.getElementById("add");
    const notify = document.getElementById("notify");
    const popupVoucher = document.getElementById("tangVoucherForm");
    const popupNotify = document.getElementById("taoThongBao");

    overlay.addEventListener("click", () => {
        overlay.style.display = "none";
        popupVoucher.style.display = "none";
        popupNotify.style.display = "none";
    });

    add.addEventListener("click", () => {
        overlay.style.display = "block";
        popupVoucher.style.display = "block";
    });

    notify.addEventListener("click", () => {
        overlay.style.display = "block";
        popupNotify.style.display = "block";
    });
</script>

</body>
</html>
