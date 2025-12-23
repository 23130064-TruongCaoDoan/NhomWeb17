<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kho voucher</title>
    <link rel="stylesheet" href="assets/css_admin/khoVoucher.css">
    <link rel="stylesheet" href="assets/css_admin/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
</head>
<body>
<main>
    <c:import url="headerAdmin.jsp"></c:import>
    <div class="content">
        <c:import url="MenuFunctionAdmin.jsp" ></c:import>
        <div class="voucher-container">
            <h2>Kho Voucher</h2>
            <div class="function">
                <button id="add">Thêm voucher</button>
                <div class="timkiem">
                    <input type="text" class="search" placeholder="Tìm kiếm voucher">
                    <button class="buttonSearch">Tìm kiếm</button>
                </div>
            </div>
            <div class="voucher-list">
                <div class="title">
                    <h3>Danh sách voucher hiện có</h3>
                    <div>
                        <select class="locVoucher">
                            <option>Tất cả</option>
                            <option>Mới nhất</option>
                            <option>Cũ nhất</option>
                        </select>
                        <select class="locVoucher">
                            <option>Tất cả</option>
                            <option>Giảm giá</option>
                            <option>Vận chuyển</option>
                        </select>
                    </div>
                </div>
                <div class="table-wrapper">
                    <table>
                        <thead>
                        <tr>
                            <th>Mã</th>
                            <th>Mô tả</th>
                            <th>Loại</th>
                            <th>Giá trị</th>
                            <th>Thời gian</th>
                            <th>Giới hạn</th>
                            <th>Chỉnh sửa</th>
                        </tr>
                        </thead>
                        <tbody id="voucherTable">
                        <tr>
                            <td>SALE50</td>
                            <td>Giảm 50% cho đơn trên 200K</td>
                            <td>Giảm giá</td>
                            <td>0.5</td>
                            <td>2025-11-01 - 2025-11-30</td>
                            <td>10</td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>SALE50</td>
                            <td>Giảm 50% cho đơn trên 200K</td>
                            <td>Giảm giá</td>
                            <td>0.5</td>
                            <td>2025-11-01 - 2025-11-30</td>
                            <td>10</td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>SALE50</td>
                            <td>Giảm 50% cho đơn trên 200K</td>
                            <td>Giảm giá</td>
                            <td>0.5</td>
                            <td>2025-11-01 - 2025-11-30</td>
                            <td>10</td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>SALE50</td>
                            <td>Giảm 50% cho đơn trên 200K</td>
                            <td>Giảm giá</td>
                            <td>0.5</td>
                            <td>2025-11-01 - 2025-11-30</td>
                            <td>10</td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>SALE50</td>
                            <td>Giảm 50% cho đơn trên 200K</td>
                            <td>Giảm giá</td>
                            <td>0.5</td>
                            <td>2025-11-01 - 2025-11-30</td>
                            <td>10</td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>SALE50</td>
                            <td>Giảm 50% cho đơn trên 200K</td>
                            <td>Giảm giá</td>
                            <td>0.5</td>
                            <td>2025-11-01 - 2025-11-30</td>
                            <td>10</td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>SALE50</td>
                            <td>Giảm 50% cho đơn trên 200K</td>
                            <td>Giảm giá</td>
                            <td>0.5</td>
                            <td>2025-11-01 - 2025-11-30</td>
                            <td>10</td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>SALE50</td>
                            <td>Giảm 50% cho đơn trên 200K</td>
                            <td>Giảm giá</td>
                            <td>0.5</td>
                            <td>2025-11-01 - 2025-11-30</td>
                            <td>10</td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div id="overlay"></div>
    <form id="voucherForm" action="addVoucher" method="get">
        <div class="form-group">
            <label>Mã voucher</label>
            <input type="text" id="code" placeholder="Nhập mã voucher" required>
        </div>

        <div class="form-group">
            <label>Mô tả</label>
            <input type="text" id="description" placeholder="Giảm 50% cho đơn trên 200K">
        </div>
        <div class="form-group">
            <label>Điều Kiện</label>
            <input type="text" id="gia" placeholder="đơn hàng trên">
            <input type="text" id="loaisach" placeholder="loại sách">
            <input type="text" id="nxv" placeholder="nhà xuất bản">
        </div>

        <div class="form-group">
            <label>Loại</label>
            <select id="type">
                <option value="percent">Giảm giá</option>
                <option value="fixed">Vận chuyển</option>
            </select>
        </div>

        <div class="form-group">
            <label>Giá trị</label>
            <input type="number" id="value" placeholder="50" required>
        </div>

        <div class="form-group-inline">
            <div>
                <label>Ngày bắt đầu</label>
                <input type="date" id="start_date" required>
            </div>
            <div>
                <label>Ngày kết thúc</label>
                <input type="date" id="end_date" required>
            </div>
        </div>

        <div class="form-group">
            <label>Giới hạn sử dụng</label>
            <input type="number" id="usage_limit" placeholder="10">
        </div>

        <button type="submit" class="btn-save">Lưu voucher</button>
    </form>
</main>
<script>
    const overlay = document.getElementById("overlay");
    const add = document.getElementById("add")
    const sua = document.querySelector(".sua")
    const popup = document.getElementById("voucherForm");


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