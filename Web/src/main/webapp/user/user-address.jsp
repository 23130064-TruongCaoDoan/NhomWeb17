<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %><html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Address</title>
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/adrress.css">

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
                    <a href="user-thongbao.jsp" class="button bt thongbao">
                        <i class="fa-solid fa-bell"><span class="number">11</span></i>
                        <span>Thông báo</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container">
            <c:import url="/user/menuUser.jsp"></c:import>
            <div class="address-container">
                <div class="address-header">
                    <h2>Sổ địa chỉ</h2>
                    <a href="user-newAddress.jsp" class="add-address"><i class="fa-solid fa-plus"></i> Thêm địa chỉ mới</a>
                </div>

                <div class="address-card card1">
                    <div class="address-info">
                        <div class="address-title">
                            <strong>Trương Đoàn</strong>
                            <span class="divider">|</span>
                            <span class="phone">0859934939</span>
                            <span class="default-tag blue">Địa chỉ thanh toán mặc định</span>
                        </div>
                        <p>699, trường tiểu học phước lâm<br>Xã Phước Hậu, Huyện Cần Giuộc, Long An, VN</p>
                    </div>
                    <div class="address-actions">
                        <a href="user-newAddress.jsp"><i class="fa-solid fa-pen"></i></a>
                        <span class="divider">|</span>
                        <button class="delete delete1"><i class="fa-solid fa-trash"></i></button>
                    </div>
                </div>

                <div class="address-card card2">
                    <div class="address-info">
                        <div class="address-title">
                            <strong>Trương Đoàn</strong>
                            <span class="divider">|</span>
                            <span class="phone">0859934939</span>
                            <span class="default-tag gray">Địa chỉ khác</span>
                        </div>
                        <p>699, trường tiểu học phước lâm<br>Xã Dũng Liệt, Huyện Yên Phong, Bắc Ninh, VN</p>
                    </div>
                    <div class="address-actions">
                        <a href="user-newAddress.jsp"><i class="fa-solid fa-pen"></i></a>
                        <span class="divider">|</span>
                        <button class="delete delete2"><i class="fa-solid fa-trash"></i></button>
                    </div>
                </div>
                <div class="emtyCard"><span> Bạn chưa có địa chỉ nào</span></div>
            </div>
        </div>
    </div>
    <c:import url="/user/footerUser.jsp"></c:import>
</div>
<script>
    function checkEmpty() {
        const emtyCard = document.querySelector(".emtyCard");
        const cards = document.querySelectorAll('.card1, .card2');

        if (cards.length === 0) {
            emtyCard.style.display = "block";
        } else {
            emtyCard.style.display = "none";
        }
    }


    document.querySelector('.delete1')?.addEventListener('click', () => {
        if (confirm('Bạn có chắc muốn xóa địa chỉ thanh toán mặc định này không?')) {
            document.querySelector('.card1')?.remove();
            checkEmpty();
        }
    });


    document.querySelector('.delete2')?.addEventListener('click', () => {
        if (confirm('Bạn có chắc muốn xóa địa chỉ này không?')) {
            document.querySelector('.card2')?.remove();
            checkEmpty();
        }
    });

</script>
</body>
</html>