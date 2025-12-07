<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý sản phẩm</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
    <link rel="stylesheet" href="assets/css_admin/mProduct.css">
    <link rel="stylesheet" href="assets/css_admin/admin.css">
</head>
<body>
<main>
    <header>
        <div class="logo left"><img src="assets/img/logo/logoChinh.png" alt="logo"></div>
        <div class="right">
            <i class="fa-solid fa-user"></i>
            <div class="ten">admin</div>
            <button class="dangxuat">Đăng xuất</button>
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
        <div class="product-container">
            <h2>Quản lý sản phẩm</h2>
            <div class="function">
                <button id="add">Thêm sản phẩm</button>
                <div class="find">
                    <input type="text" class="search" placeholder="Tìm kiếm sản phẩm">
                    <button class="buttonSearch">Tìm kiếm</button>
                </div>
            </div>
            <div class="infor-table">
                <div class="title">
                    <h3>Danh sách sản phẩm</h3>
                    <div>
                        <select class="filter-sp">
                            <option>Tất cả</option>
                            <option>Số lượng tăng dần</option>
                            <option>Số lượng giảm dần</option>
                        </select>
                        <select class="filter-sp">
                            <option>Tất cả</option>
                            <option>Truyện tranh</option>
                            <option>Sách ảnh</option>
                            <option>Sách giáo</option>
                            <option>Sách tô màu</option>
                        </select>
                    </div>
                </div>
                <div class="table-wrapper">
                    <table>
                        <thead>
                        <tr>
                            <th>Mã sách</th>
                            <th>Tên sách</th>
                            <th>Tác giả</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Loại sách</th>
                            <th>Độ tuổi</th>
                            <th>Hình ảnh</th>
                            <th>Chỉnh sửa</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>B001</td>
                            <td>365 Truyện kể hằng đêm</td>
                            <td>Nhiều tác giả</td>
                            <td>50.000 ₫</td>
                            <td>20</td>
                            <td>Thiếu nhi</td>
                            <td>6+</td>
                            <td><img src="assets/img/books/365TruyenKeHangDem.png" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>B002</td>
                            <td>Dế Mèn Phiêu Lưu Ký</td>
                            <td>Tô Hoài</td>
                            <td>45.000 ₫</td>
                            <td>15</td>
                            <td>Văn học Việt Nam</td>
                            <td>8+</td>
                            <td><img src="assets/img/books/DeMen.jpg" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>B001</td>
                            <td>365 Truyện kể hằng đêm</td>
                            <td>Nhiều tác giả</td>
                            <td>50.000 ₫</td>
                            <td>20</td>
                            <td>Thiếu nhi</td>
                            <td>6+</td>
                            <td><img src="assets/img/books/365TruyenKeHangDem.png" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>B002</td>
                            <td>Dế Mèn Phiêu Lưu Ký</td>
                            <td>Tô Hoài</td>
                            <td>45.000 ₫</td>
                            <td>15</td>
                            <td>Văn học Việt Nam</td>
                            <td>8+</td>
                            <td><img src="assets/img/books/DeMen.jpg" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>B001</td>
                            <td>365 Truyện kể hằng đêm</td>
                            <td>Nhiều tác giả</td>
                            <td>50.000 ₫</td>
                            <td>20</td>
                            <td>Thiếu nhi</td>
                            <td>6+</td>
                            <td><img src="assets/img/books/365TruyenKeHangDem.png" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>B002</td>
                            <td>Dế Mèn Phiêu Lưu Ký</td>
                            <td>Tô Hoài</td>
                            <td>45.000 ₫</td>
                            <td>15</td>
                            <td>Văn học Việt Nam</td>
                            <td>8+</td>
                            <td><img src="assets/img/books/DeMen.jpg" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>B001</td>
                            <td>365 Truyện kể hằng đêm</td>
                            <td>Nhiều tác giả</td>
                            <td>50.000 ₫</td>
                            <td>20</td>
                            <td>Thiếu nhi</td>
                            <td>6+</td>
                            <td><img src="assets/img/books/365TruyenKeHangDem.png" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>B002</td>
                            <td>Dế Mèn Phiêu Lưu Ký</td>
                            <td>Tô Hoài</td>
                            <td>45.000 ₫</td>
                            <td>15</td>
                            <td>Văn học Việt Nam</td>
                            <td>8+</td>
                            <td><img src="assets/img/books/DeMen.jpg" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>B001</td>
                            <td>365 Truyện kể hằng đêm</td>
                            <td>Nhiều tác giả</td>
                            <td>50.000 ₫</td>
                            <td>20</td>
                            <td>Thiếu nhi</td>
                            <td>6+</td>
                            <td><img src="assets/img/books/365TruyenKeHangDem.png" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        <tr>
                            <td>B002</td>
                            <td>Dế Mèn Phiêu Lưu Ký</td>
                            <td>Tô Hoài</td>
                            <td>45.000 ₫</td>
                            <td>15</td>
                            <td>Văn học Việt Nam</td>
                            <td>8+</td>
                            <td><img src="assets/img/books/DeMen.jpg" width="60"></td>
                            <td><i class="fa-solid fa-pen sua"></i>
                                <i class="fa-solid fa-trash xoa"></i></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="overlay"></div>
        <form id="bookForm">
            <div class="form-grid">
                <div class="form-group">
                    <label>Mã Sách</label>
                    <input type="text" id="code" placeholder="Nhập mã sách" required>
                </div>

                <div class="form-group">
                    <label>Tên sách</label>
                    <input type="text" id="title" placeholder="Nhập tên sách">
                </div>

                <div class="form-group">
                    <label>Tác giả</label>
                    <input type="text" id="author" placeholder="Tên tác giả">
                </div>

                <div class="form-group">
                    <label>Số lượng</label>
                    <input type="number" id="quantity" placeholder="VD: 50" required>
                </div>
                <div class="form-group">
                    <label>Ảnh bìa</label>
                    <input type="text" id="img-main" placeholder="link ảnh" required>
                </div>
                <div class="form-group">
                    <label>Hình ảnh chi tiết</label>
                    <input type="text" id="img" placeholder="VD: link ảnh 1, link ảnh 2..." required>
                </div>
                <div class="form-group">
                    <label>Loại sách</label>
                    <input type="text" id="type" placeholder="Truyện tranh, sách ảnh...." required>
                </div>
                <div class="form-group">
                    <label>Nhà xuất bản</label>
                    <input type="text" id="publisher" placeholder="Tên nhà xuất bản" required>
                </div>
                <div class="form-group">
                    <label>Trọng lượng sách</label>
                    <input type="number" id="weight" placeholder="VD: 10 gram">
                </div>
                <div class="form-group">
                    <label>Kích thước</label>
                    <input type="text" id="size" placeholder="VD: 17x14">
                </div>
                <div class="form-group">
                    <label>Số Trang</label>
                    <input type="number" id="page_number" placeholder="VD: 30">
                </div>
                <div class="form-group-inline">
                    <div>
                        <label>Ngày xuất bản</label>
                        <input type="date" id="start_date" required>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label>Mô tả</label>
                <textarea name="" id="description" cols="10" rows="4" placeholder="mô tả về sách"></textarea>
            </div>
            <button type="submit" class="btn-save">Thêm sản phẩm</button>
        </form>
    </div>
    <div>

    </div>
</main>
<script>
    const overlay = document.getElementById("overlay");
    const add = document.getElementById("add")
    const sua = document.querySelector(".sua")
    const popup = document.getElementById("bookForm");
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