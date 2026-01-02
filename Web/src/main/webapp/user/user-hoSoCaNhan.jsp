<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User</title>
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/hoSoCaNhan.css">
</head>
<body>
<div class="page-wrapper">
    <c:import url="/user/headerUser.jsp"></c:import>
    <div class="content">
        <div class="container">
            <div class="menuUser">
                <c:import url="/user/menuUser.jsp"></c:import>
            </div>
            <div class="profile-container">
                <h2>Hồ sơ cá nhân</h2>
                <div class="form-group">
                    <label for="hoten">Họ và tên</label>
                    <input type="text" id="hoten" placeholder="Nhập họ và tên" aria-describedby="hotenError"/>
                    <div class="error" id="hotenError" role="alert" aria-live="polite">Vui lòng nhập họ và tên.</div>
                </div>
                <div class="form-group">
                    <label for="sdt">Số điện thoại</label>
                    <div class="form-inline">
                        <input type="text" id="sdt" placeholder="Nhập số điện thoại " readonly>
                        <a id="thayDoiDT" href="#">Thay đổi</a>
                    </div>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <div class="form-inline">
                        <input type="email" id="email" value="truongdoangacho432@gmail.com" readonly>
                        <a id="thayDoiE" href="#">Thay đổi</a>
                    </div>
                </div>

                <div class="form-group">
                    <label>Giới tính</label>
                    <div class="gender-group">
                        <label><input type="radio" name="gioitinh" checked> Nam</label>
                        <label><input type="radio" name="gioitinh"> Nữ</label>
                    </div>
                </div>
                <div class="form-group">
                    <label>Birthday</label>
                    <div class="birthday-group">
                        <input type="number" placeholder="25" min="1" max="31">
                        <input type="number" placeholder="04" min="1" max="12">
                        <input type="number" placeholder="2005" min="1900" max="2025">
                    </div>
                </div>
                <button class="btn-save">Lưu thay đổi</button>
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
                <a href="user-hoSoCaNhan.html">Tài khoản</a>
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