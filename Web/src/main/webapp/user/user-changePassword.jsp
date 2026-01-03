<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>changePassword</title>
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
    <link rel="stylesheet" href="assets/css/changePassword.css">
</head>
<body>
<div class="page-wrapper">
    <c:import url="/user/headerUser.jsp"></c:import>
    <div class="content">
        <div class="container">
            <c:import url="/user/menuUser.jsp"></c:import>
            <div class="password-container">
                <h2>Đổi mật khẩu</h2>
                <form class="password-form" id="passwordForm" novalidate>

                    <div class="form-group">
                        <label>Mật khẩu hiện tại</label>
                        <input type="password" id="oldPass" placeholder="Nhập mật khẩu hiện tại">
                        <small class="error-msg"></small>
                    </div>

                    <div class="form-group">
                        <label>Mật khẩu mới</label>
                        <input type="password" id="newPass" placeholder="Nhập mật khẩu mới">
                        <small class="error-msg"></small>
                    </div>

                    <div class="form-group">
                        <label>Xác nhận mật khẩu mới</label>
                        <input type="password" id="confirmPass" placeholder="Nhập lại mật khẩu mới">
                        <small class="error-msg"></small>
                    </div>

                    <button type="submit" class="save-btn">Lưu mật khẩu</button>
                </form>
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
<script>
    document.getElementById("passwordForm").addEventListener("submit", function (e) {
        e.preventDefault();

        const oldPass = document.getElementById("oldPass");
        const newPass = document.getElementById("newPass");
        const confirmPass = document.getElementById("confirmPass");

        const fields = [
            { el: oldPass, name: "mật khẩu hiện tại" },
            { el: newPass, name: "mật khẩu mới" },
            { el: confirmPass, name: "xác nhận mật khẩu mới" }
        ];

        let isValid = true;


        fields.forEach(f => {
            const errorMsg = f.el.nextElementSibling;
            if (!f.el.value.trim()) {
                errorMsg.textContent = `Vui lòng nhập ${f.name}.`;
                errorMsg.style.display = "block";
                f.el.classList.add("error");
                isValid = false;
            } else {
                errorMsg.textContent = "";
                errorMsg.style.display = "none";
                f.el.classList.remove("error");
            }
        });

        if (newPass.value && newPass.value.length < 6) {
            const errorMsg = newPass.nextElementSibling;
            errorMsg.textContent = "Mật khẩu mới phải có ít nhất 6 ký tự.";
            errorMsg.style.display = "block";
            newPass.classList.add("error");
            isValid = false;
        }


        if (newPass.value && confirmPass.value && newPass.value !== confirmPass.value) {
            const errorMsg = confirmPass.nextElementSibling;
            errorMsg.textContent = "Mật khẩu xác nhận không trùng khớp.";
            errorMsg.style.display = "block";
            confirmPass.classList.add("error");
            isValid = false;
        }

        if (isValid) {
            alert("Đổi mật khẩu thành công!");

        }
    });
</script>
</body>
</html>