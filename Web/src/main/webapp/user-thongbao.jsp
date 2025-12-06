<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User</title>
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/hoSoCaNhan.css">
    <link rel="stylesheet" href="assets/css/thongbao.css">
</head>
<body>
<div class="page-wrapper">
    <div id="home-page">
        <div id="page-header">
            <div class="header-message">
                <div class="message"></div>
                <div class="messageBorder"></div>
            </div>
            <div class="container">
                <div class="header-title">
                    <a href="" class="logo">
                        <img
                                src="assets/img/logo/logoChinh.png"
                                alt="Sách thiếu nhi cho bé"
                        />
                    </a>
                </div>
                <div class="header-menu">
                    <a href="home.jsp" class="button bt"
                    ><i class="fa-solid fa-house"></i><span>Trang chủ</span></a
                    >
                    <div class="button category">
                        <a href="dsSanPham.jsp" class="button bt danhmuc">
                            <i class="fa-solid fa-list"></i><span>Danh mục</span></a
                        >
                        <div class="danhMuc sach">
                            <div class="item truyenTranh">
                                <a href="dsSanPham.jsp" class="it truyen-tranh"
                                ><span>Truyện tranh</span></a
                                >
                            </div>
                            <div class="item anh">
                                <a href="dsSanPham.jsp" class="it sach-anh"><span>Sách ảnh</span></a>
                            </div>
                            <div class="item giaoDuc">
                                <a href="dsSanPham.jsp" class="it giao-duc"><span>Giáo dục</span></a>
                            </div>
                            <div class="item toMau">
                                <a href="dsSanPham.jsp" class="it to-mau"><span>Sách tô màu</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="search">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <input type="search" placeholder="Tìm kiếm sách"/>
                        <button>Tìm Kiếm</button>
                    </div>
                    <a href="login.jsp" class="button bt taikhoan">
                        <i class="fa-solid fa-user"></i>
                        <span>Tài khoản</span>
                    </a>
                    <a href="shoppingCart.jsp" class="button bt gio">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span>Giỏ hàng</span>
                    </a>
                    <a href="user-thongbao.html" class="button bt thongbao">
                        <i class="fa-solid fa-bell"><span class="number">11</span></i>
                        <span>Thông báo</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container">
            <div class="menuUser">
                <div class="nameUser">
                    <div class="anh"><i class="fa-solid fa-user"></i></div>
                    <div class="name"> Lê Vân Trường</div>
                    <div class="bacThanhVien">Thành viên bạc</div>
                    <div class="point">10000 point</div>
                </div>
                <div class="menuMain">
                    <a href="user-hoSoCaNhan.jsp" class="menu ttcn"><i class="fa-regular fa-user"></i><span>Thông tin cá nhân</span><i
                            class="fa-solid fa-arrow-down"></i></a>
                    <div class="menuInfor">
                        <a href="user-hoSoCaNhan.jsp" class="title prof"><span>Hồ sơ cá nhân</span></a>
                        <a href="user-address.jsp" class="title address"><span>Sổ địa chỉ</span></a>
                        <a href="user-changePassword.jsp" class="title passw"><span>Đổi mật khẩu</span></a>
                        <a href="user_UuDaiThanhVien.jsp" class="title member"><span>Ưu đãi thành viên</span></a>
                    </div>
                    <a href="user-myOrders.jsp" class="menu donhang"><i class="fa-solid fa-receipt"></i><span>Đơn hàng của tôi</span></a>
                    <a href="ViVoucher.jsp" class="menu Voucher"><i class="fa-solid fa-ticket"></i></i>
                        <span>Ví voucher</span></a>
                    <a href="user-thongbao.html" class="menu thongbao"><i class="fa-regular fa-bell"></i><span>Thông báo</span></a>
                    <a href="user-spYeuThich.jsp" class="menu spYeuThich"><i
                            class="fa-regular fa-heart"></i><span>Sản phẩm yêu thích</span></a>
                </div>
                <div class="btDangXuat">
                    <a href="login.jsp" class="dangXuat">Đăng xuất</a>
                </div>
            </div>
            <div class="profile-container inform">
                <div class="nav-inform">
                    <a href="" class="tab-inform active">Tất cả</a>
                    <a href="" class="tab-inform">Đơn Hàng</a>
                    <a href="" class="tab-inform">Sự kiện</a>
                    <a href="" class="tab-inform">Mã giảm giá</a>
                    <a href="" class="tab-inform">Xác nhận</a>
                </div>
                <hr/>
                <div class="inform-card">
                    <div class="head-inform-card">
                        <p class="title-inform">Cập nhật số điện thoại ngay để nhận quà!</p>
                        <p>16:43 11/11/2025</p>
                    </div>
                    <p class="content-inform">
                        Bạn vừa đăng kí tài khoản? Hãy cập nhật email ngay để nhận được các thông báo quà tặng dành cho khách hàng mới! Click ngay vào đây để cập nhật. Đừng quên tiếp tục tham gia mua sắm để nhận được những ưu đãi dành riêng cho khách hàng mới.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <div class="wave-container">
            <svg
                    viewBox="0 0 120 15"
                    xmlns="http://www.w3.org/2000/svg"
                    preserveAspectRatio="none"
            >
                <path
                        d="M0,10
                C10,15 20,5 30,10
                C40,15 50,5 60,10
                C70,15 80,5 90,10
                C100,15 115,5 120,10
                L120,20 0,20 Z"
                ></path>
            </svg>
        </div>
        <div class="footer-container">
            <div class="footer-column">
                <h3>Liên hệ chúng tôi</h3>
                <a href="#"><i class="fa-solid fa-phone"></i> 0981566177</a>
                <a href="#"
                ><i class="fa-brands fa-facebook-messenger"></i> Chat trực tiếp</a
                >
            </div>

            <div class="footer-column">
                <h3>Dịch vụ khách hàng</h3>
                <a href="user-myOrders.jsp">Theo dõi đơn hàng</a>
                <a href="user-hoSoCaNhan.jsp">Tài khoản</a>
                <a href="returnPolicy.jsp">Chính sách đổi trả</a>

            </div>

            <div class="footer-column">
                <h3>Đối tác</h3>
                <a href="NhaPhanPhoi.jsp">Nhà phân phối</a>
                <a href="dsSanPham.jsp">Sách của chúng tôi</a>
            </div>

            <div class="footer-column">
                <h3>Bảo mật</h3>
                <a href="PrivatePolicy.jsp">Chính sách bảo mật</a>
                <a href="DieuKhoanSuDung.jsp">Điều khoản sử dụng</a>
            </div>
        </div>
        <div class="footer-bottom">
            <p>Copyright ©. All Rights Reserved.</p>
        </div>
    </footer>
</div>
<div class="overlay" id="overlay"></div>
<div class="popup" id="thaydoDT">
    <h3>THAY ĐỔI SỐ ĐIỆN THOẠI</h3>

    <div class="form-group">
        <label for="phone">Số điện thoại</label>
        <input type="text" id="phone" placeholder="Nhập số điện thoại"/>
    </div>

    <div class="form-group">
        <label>Chọn phương thức xác minh OTP</label>
        <div class="otp-method">
            <button class="method sms"><i class="fa-solid fa-comment-sms"></i>Tin nhắn SMS</button>
            <button class="method zalo"><img src="assets/img/icon/iconZalo.png" alt=""><span>Zalo ZNS</span></button>
        </div>
    </div>

    <div class="form-group">
        <label for="otp">Mã xác nhận OTP</label>
        <input type="text" id="otp" placeholder="6 ký tự" maxlength="6"/>
    </div>
    <div class="btn-group">
        <button class="confirm">Xác nhận</button>
        <button class="cancel">Trở về</button>
    </div>
</div>
<div class="popup" id="thaydoiEmail">
    <h3>THAY ĐỔI EMAIL</h3>
    <div class="form-group">
        <label>Email</label>
        <div class="email-row">
            <input type="email" placeholder="Enter Email"/>
            <button class="otp-btn">Gửi mã OTP</button>
        </div>
    </div>

    <div class="form-group">
        <label>Mã xác nhận OTP</label>
        <input type="text" placeholder="6 ký tự" maxlength="6"/>
    </div>

    <div class="btn-group">
        <button class="confirm">Xác nhận</button>
        <button class="cancel">Trở về</button>
    </div>
</div>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const hoten = document.getElementById('hoten');
        const hotenError = document.getElementById('hotenError');
        const btnSave = document.querySelector('.btn-save');

        function showError(message) {
            hotenError.textContent = message || 'Vui lòng nhập họ và tên.';
            hotenError.style.display = 'block';
            hoten.classList.add('input-error');
        }

        function hideError() {
            hotenError.style.display = 'none';
            hoten.classList.remove('input-error');
        }

        btnSave.addEventListener('click', function (e) {
            const value = hoten.value.trim();
            if (!value) {
                e.preventDefault();
                showError('Họ và tên không được để trống.');
                hoten.focus();
                return;
            }
            if (value.length < 2) {
                e.preventDefault();
                showError('Vui lòng nhập đầy đủ họ và tên (ít nhất 2 ký tự).');
                hoten.focus();
                return;
            }
            hideError();
        });
        hoten.addEventListener('input', function () {
            if (hoten.value.trim()) hideError();
        });

        // optional: validate on blur để warning sớm
        hoten.addEventListener('blur', function () {
            if (!hoten.value.trim()) showError('Họ và tên không được để trống.');
        });
    });
    // thay đổi số điện thoại và email
    const overlay = document.getElementById("overlay");
    const popup = document.getElementById("thaydoDT");
    const popupE = document.getElementById("thaydoiEmail");
    const cancelBtns=document.querySelectorAll(".cancel");
    const changeBtn = document.getElementById("thayDoiDT");
    const changeBtnE = document.getElementById("thayDoiE");


    changeBtn.addEventListener('click', (e) => {
        e.preventDefault();
        overlay.style.display = "block";
        popup.style.display = "block";
    });
    changeBtnE.addEventListener('click', (e) => {
        e.preventDefault();
        overlay.style.display = "block";
        popupE.style.display = "block";
    });
    cancelBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            overlay.style.display = "none";
            popup.style.display = "none";
            popupE.style.display = "none";
        });
    });

    overlay.addEventListener('click', () => {
        overlay.style.display = "none";
        popup.style.display = "none";
        popupE.style.display = "none";
    });

</script>
</body>
</html>