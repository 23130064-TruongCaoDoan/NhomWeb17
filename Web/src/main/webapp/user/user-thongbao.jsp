<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect(request.getContextPath() + "/login");
        return;
    }
%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
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
    <c:import url="/user/headerUser.jsp"></c:import>
    <div class="content">
        <div class="container">

            <div class="menuUser">
                <c:import url="/user/menuUser.jsp"></c:import>
            </div>
            <div class="profile-container inform" >
                <div class="nav-inform">
                    <a href="" class="tab-inform active">Tất cả</a>
                    <a href="" class="tab-inform">Đơn Hàng</a>
                    <a href="" class="tab-inform">Sự kiện</a>
                    <a href="" class="tab-inform">Mã giảm giá</a>
                    <a href="" class="tab-inform">Xác nhận</a>
                </div>
                <hr/>
                <div style="overflow: scroll;height: 47vh">
                    <c:forEach var="n" items="${notifications}">
                        <div class="inform-card">
                            <div class="head-inform-card">
                                <p class="title-inform">${n.title}</p>
                                <p>${n.createdAt}</p>
                            </div>

                            <p class="content-inform">
                                    ${n.noti}
                            </p>
                        </div>
                    </c:forEach>
                    <c:if test="${empty notifications}">
                        <p style="text-align:center; margin-top:20px;">
                            Không có thông báo
                        </p>
                    </c:if>
                </div>

            </div>
        </div>
    </div>
    <c:import url="/user/footerUser.jsp"></c:import>
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