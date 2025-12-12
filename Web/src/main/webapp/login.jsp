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
                <a href="login.html" class="button bt taikhoan">
                    <i class="fa-solid fa-user"></i>
                    <span>Tài khoản</span>
                </a>
                <a href="shoppingCart.jsp" class="button bt gio">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <span>Giỏ hàng</span>
                </a>
                <a href="user-thongbao.jsp" class="button bt thongbao">
                    <i class="fa-solid fa-bell"><span class="number">11</span></i>
                    <span>Thông báo</span>
                </a>
            </div>
        </div>
    </div>
</div>
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
                <div class="khung user"><input value="${username}" type="text" id="iUser" name="user" placeholder="Số điện thoại hoặc email" required></div>
                <div class="khung MK"><input value="${password}" type="password" id="iPass" name="password" placeholder="Mật khẩu" required>
                    <button type="button" class="show"><i class="fa-solid fa-eye "></i></button>
                </div>
                <div class="error" style="color: red">${error}</div>
            </div>
            <div class="forget"><a href="" class="qmk"><span>quên mật khẩu</span></a></div>
            <div class="buttonLoginAndSignUp">
                <button type="submit" class="dangNhap">Đăng nhập</button>
                <div class="signUp"><a href="<c:url value='dangki' />"><span>Đăng ký</span></a></div>
            </div>
        </form>
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
<div class="overlay" id="overlay"></div>
<form class="quenmk">
    <p>GỬI LẠI MẬT KHẨU</p>
    <div class="khung">
        <input type="email" class="nhapemail" placeholder="Nhập email lấy lại mật khẩu">
        <div class="error Email"></div>
    </div>
    <button class="send">Chấp nhận</button>
</form>
<script>
    // const userInput = document.getElementById('iUser');
    // const khungPass = document.querySelector(".MK")
    // const btnLogin = document.querySelector('.dangNhap');
    //
    // const errorUser = document.querySelector('.User');
    // const errorPass = document.querySelector('.Pass');
    //
    // btnLogin.addEventListener('click', (e) => {
    //
    //     let hasError = false;
    //     if (userInput.value.trim() === '') {
    //         userInput.style.border = '1px solid red';
    //         errorUser.textContent = 'Vui lòng nhập tên đăng nhập hoặc email';
    //         errorUser.style.color = 'red';
    //         hasError = true;
    //     } else {
    //         userInput.style.border = '1px solid #0d3164';
    //         errorUser.textContent = '';
    //     }
    //     if (passInput.value.trim() === '') {
    //         khungPass.style.border = '1px solid red';
    //         errorPass.textContent = 'Vui lòng nhập mật khẩu';
    //         errorPass.style.color = 'red';
    //         hasError = true;
    //     } else {
    //         passInput.style.border = '1px solid #0d3164';
    //         errorPass.textContent = '';
    //     }
    //     if (!hasError) {
    //     }
    // });
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
    const errorEmail = document.querySelector(".error.Email");

    send.addEventListener('click', (e) => {
        e.preventDefault();
        const input =document.querySelector(".nhapemail").value.trim();
        if (input === "") {
            errorEmail.style.display="block"
            errorEmail.textContent = "Vui lòng nhập email!";
        } else {
            errorEmail.style.display="none"
            errorEmail.textContent = "";
            overlay.style.display = "none";
            popup.style.display = "none";
            alert("Mật khẩu đã được gửi bên email của bạn");
        }
    });
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