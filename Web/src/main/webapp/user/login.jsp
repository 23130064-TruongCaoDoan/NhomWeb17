<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/Login.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
    />

</head>
<body>
<c:import url="headerUser.jsp"></c:import>
<div id="content">
    <div class="container">
        <c:if test="${not empty message}">
            <div class="login-success-alert">
                <div><i class="fa-solid fa-check-circle"></i> <strong>${message}</strong></div>
                <button type="button" class="close-btn" onclick="this.parentElement.remove()">&times;</button>
            </div>
        </c:if>
        <form action="login" method="post" class="login">
            <div class="title">Đăng nhập</div>
            <div class="inputIfor">
                <div class="khung user"><input value="${username}" type="text" id="iUser" name="user"
                                               placeholder="Số điện thoại hoặc email" required></div>
                <div class="khung MK"><input value="${password}" type="password" id="iPass" name="password"
                                             placeholder="Mật khẩu" required>
                    <button type="button" class="show"><i class="fa-solid fa-eye "></i></button>
                </div>
                <div class="error" style="color: red">${error}</div>
            </div>
            <div class="forget"><a href="" class="qmk"><span>Quên mật khẩu</span></a></div>
            <div class="buttonLoginAndSignUp">
                <button type="submit" class="dangNhap">Đăng nhập</button>
                <div class="signUp"><a href="<c:url value='dangki' />"><span>Đăng ký</span></a></div>
            </div>
        </form>
    </div>
</div>
<c:import url="footerUser.jsp"></c:import>
<div class="overlay" id="overlay"></div>
<form action="quenMK" method="post" class="quenmk">
    <p>GỬI LẠI MẬT KHẨU</p>
    <div class="khung">
        <input type="email" name="emailMK" class="nhapemail" placeholder="Nhập email lấy lại mật khẩu" required>
        <div class="errorEmail" style="color: red; font-size: 14px;margin-top: 5px">${errorMail}</div>
    </div>
    <button type="submit" class="send">Chấp nhận</button>
</form>
<script>

    const passInput = document.getElementById('iPass');
    const bShow = document.querySelector(".show")
    bShow.addEventListener("click", function () {
        if (passInput.type === "password") {
            passInput.type = "text";
        } else {
            passInput.type = "password";
        }
    })

    const overlay = document.getElementById("overlay");
    const popup = document.querySelector(".quenmk");
    const quenmk = document.querySelector(".qmk");
    const send = document.querySelector(".send");

    quenmk.addEventListener('click', (e) => {
        e.preventDefault();
        overlay.style.display = "block";
        popup.style.display = "block";
    });
    overlay.addEventListener('click', () => {
        overlay.style.display = "none";
        popup.style.display = "none";
    });
    <c:if test="${openQMKPopup}">
    overlay.style.display = "block";
    popup.style.display = "block";
    </c:if>
    const errorEmail = document.querySelector(".error.Email");
    const successAlert = document.querySelector('.login-success-alert');
    if (successAlert) {
        setTimeout(() => {
            successAlert.style.transition = 'all 0.6s ease';
            successAlert.style.opacity = '0';
            successAlert.style.transform = 'scale(0.9)';
            setTimeout(() => successAlert.remove(), 600);
        }, 2500);
    }


</script>
</body>
</html>