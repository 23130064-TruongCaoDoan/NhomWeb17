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
    <title>Sản Phẩm Yêu Thích</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cormorant+Garamond:ital,wght@0,300..700;1,300..700&family=Libre+Franklin:ital,wght@0,100..900;1,100..900&family=Merriweather+Sans:ital,wght@0,300..800;1,300..800&family=Playwrite+DE+SAS:wght@100..400&family=Sarabun:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/home.css">
    <link rel="stylesheet" href="assets/css/errolpage.css">
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/address.css">
    <link rel="stylesheet" href="assets/css/spYeuThich.css">
</head>

<body>
<div id="home-page">
    <c:import url="headerUser.jsp"> </c:import>
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
                <a href="user-thongbao.jsp" class="menu thongbao"><i class="fa-regular fa-bell"></i><span>Thông báo</span></a>
                <a href="user-spYeuThich.html" class="menu spYeuThich"><i
                        class="fa-regular fa-heart"></i><span>Sản phẩm yêu thích</span></a>
            </div>
            <div class="btDangXuat">
                <a href="login.jsp" class="dangXuat">Đăng xuất</a>
            </div>
        </div>
        <div class="favorite-products">
            <h2>Sản phẩm yêu thích của tôi</h2>
            <div class="listProducts">
                <div class="card">
                    <span class="remove-btn"><i class="fa-solid fa-xmark" style="color: #ed1212;"></i></span>
                    <img src="assets/img/books/DeMen.jpg" alt="" />
                    <p class="book-name">Dế Mèn phiêu lưu ký</p>
                    <p class="rating">⭐⭐⭐⭐⭐</p>
                    <div class="price-cart">
                        <p class="price">50.000 Đ</p>
                        <i class="fa-solid fa-cart-plus"></i>
                    </div>
                </div>
                <div class="card">
                    <span class="remove-btn"><i class="fa-solid fa-xmark" style="color: #ed1212;"></i></span>

                    <a href="productDetail.jsp">
                        <img src="assets/img/books/365TruyenKeHangDem.png" alt="" />
                    </a>
                    <p class="book-name">365 Truyện kể hằng đêm 1</p>
                    <p class="rating">⭐⭐⭐⭐⭐</p>
                    <div class="price-cart">
                        <p class="price">50.000 Đ</p>
                        <i class="fa-solid fa-cart-plus"></i>
                    </div>
                </div>
                <div class="card">
                    <span class="remove-btn"><i class="fa-solid fa-xmark" style="color: #ed1212;"></i></span>
                    <img src="assets/img/books/CoTichTheGioi.jpg" alt="" />
                    <p class="book-name">Tuyển tập cổ tích thế giới</p>
                    <p class="rating">⭐⭐⭐⭐⭐</p>
                    <div class="price-cart">
                        <p class="price">50.000 Đ</p>
                        <i class="fa-solid fa-cart-plus"></i>
                    </div>
                </div>
                <div class="card">
                    <span class="remove-btn"><i class="fa-solid fa-xmark" style="color: #ed1212;"></i></span>
                    <img src="assets/img/books/guongDungCam.png" alt="" />
                    <p class="book-name">Gương Dũng Cảm</p>
                    <p class="rating">⭐⭐⭐⭐⭐</p>
                    <div class="price-cart">
                        <p class="price">50.000 Đ</p>
                        <i class="fa-solid fa-cart-plus"></i>
                    </div>
                </div>
                <div class="card">
                    <span class="remove-btn"><i class="fa-solid fa-xmark" style="color: #ed1212;"></i></span>
                    <img src="assets/img/books/ThoiQuenTot.jpg" alt="" />
                    <p class="book-name">Bồi dưỡng thói quen tốt</p>
                    <p class="rating">⭐⭐⭐⭐⭐</p>
                    <div class="price-cart">
                        <p class="price">50.000 Đ</p>
                        <i class="fa-solid fa-cart-plus"></i>
                    </div>
                </div>
                <div class="card">
                    <span class="remove-btn"><i class="fa-solid fa-xmark" style="color: #ed1212;"></i></span>

                    <img src="assets/img/books/suThanVietNam.jpg" alt="" />
                    <p class="book-name">Sứ Thần Việt Nam</p>
                    <p class="rating">⭐⭐⭐⭐⭐</p>
                    <div class="price-cart">
                        <p class="price">50.000 Đ</p>
                        <i class="fa-solid fa-cart-plus"></i>
                    </div>
                </div>
                <div class="card">
                    <span class="remove-btn"><i class="fa-solid fa-xmark" style="color: #ed1212;"></i></span>

                    <img src="assets/img/books/guongHieuHoc.jpg" alt="" />
                    <p class="book-name">Gương hiếu học</p>
                    <p class="rating">⭐⭐⭐⭐⭐</p>
                    <div class="price-cart">
                        <p class="price">50.000 Đ</p>
                        <i class="fa-solid fa-cart-plus"></i>
                    </div>
                </div>
                <div class="card">
                    <span class="remove-btn"><i class="fa-solid fa-xmark" style="color: #ed1212;"></i></span>
                    <img src="assets/img/books/thanDongVietNam.jpg" alt="" />
                    <p class="book-name">Thần Đồng Việt Nam</p>
                    <p class="rating">⭐⭐⭐⭐⭐</p>
                    <div class="price-cart">
                        <p class="price">50.000 Đ</p>
                        <i class="fa-solid fa-cart-plus"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="footerUser.jsp"> </c:import>

<script>
    document.addEventListener('DOMContentLoaded', function() {
    const mainImage = document.getElementById('mainImageDisplay');
    const thumbnails = document.querySelectorAll('.thumbnail-column .thumbnail');

    thumbnails.forEach(thumbnail => {
        thumbnail.addEventListener('click', function() {
            thumbnails.forEach(t => t.classList.remove('active'));
            this.classList.add('active');
            mainImage.src = this.dataset.mainImage;
        });
    });
});
const heart = document.getElementById('addHeart')
heart.addEventListener('click', function() {
    heart.style.color = heart.style.color === 'red' ? 'gray' : 'red';
})</script>
</body>
</html>