<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đơn hàng của tôi</title>
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
    <link rel="stylesheet" href="assets/css/myOrder.css">
</head>
<body>
<c:import url="/user/headerUser.jsp"></c:import>
<div class="content">
    <div class="container">
        <c:import url="/user/menuUser.jsp"></c:import>
        <div class="manage-order">
            <div class="menu-bar">
                <div class="menu-item all active">
                    <p>Tất cả</p>
                </div>
                <div class="menu-item">
                    <p>Chờ xác nhận</p>
                </div>
                <div class="menu-item">
                    <p>Vận chuyển</p>
                </div>
                <div class="menu-item">
                    <p>Chờ giao hàng</p>
                </div>
                <div class="menu-item">
                    <p>Hoàn thành</p>
                </div>
                <div class="menu-item">
                    <p>Đã hủy</p>
                </div>
                <div class="menu-item" id="hoantien">
                    <p>Hoàn trả</p>
                </div>
            </div>
            <div class="order-content">
                <div class="card-order">
                    <div class="top">
                        <p class="order-id">Mã đơn hàng: #12121</p>
                        <div class="order-status"><p class="time">11/11/2025 - 9:50</p><p class="status-delivered">Đã giao</p></div>
                    </div>
                        <div class="center">
                            <div class="image">
                                <a href="productDetail.jsp">
                                    <img src="assets/img/books/365TruyenKeHangDem.png" alt="" />
                                </a>
                            </div>
                            <div class="info">
                                <p class="book-name">365 Truyện kể hằng đêm 1</p>
                            </div>
                        </div>
                        <div class="bottom">
                            <div class="quantity">Số lượng sản phẩm 3 </div>
                            <div class="price-cart">
                                <div class="total-price">
                                    <span class="total">Tổng tiền:</span>
                                    <span class="price">50.000 đ</span>
                                </div>
                                <div class="button">
                                    <button class="rebuy">Mua lại</button>
                                    <button onclick="window.location='user-order-detail.jsp'">Xem chi tiết</button>
                                    <button>Yêu cầu hoàn trả</button>
                                </div>
                            </div>
                        </div>
                </div>
                <div class="card-order">
                    <div class="top">
                        <p class="order-id">Mã đơn hàng: #12122</p>
                        <div class="order-status"><p class="time">11/11/2025 - 9:50</p><p class="status-waiting"><i class="fa-solid fa-clock-rotate-left"></i>  Chờ xác nhận</p></div>
                    </div>
                    <div class="center">
                        <div class="image">
                            <a href="productDetail.jsp">
                                <img src="assets/img/books/365TruyenKeHangDem.png" alt="" />
                            </a>
                        </div>
                        <div class="info">
                            <p class="book-name">365 Truyện kể hằng đêm 1</p>
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="quantity">Số lượng sản phẩm 3 </div>
                        <div class="price-cart">
                            <div class="total-price">
                                <span class="total">Tổng tiền:</span>
                                <span class="price">50.000 đ</span>
                            </div>
                            <div class="button">
                                <button>Xem chi tiết</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-order">
                    <div class="top">
                        <p class="order-id">Mã đơn hàng: #12121</p>
                        <div class="order-status"><p class="time">11/11/2025 - 9:50</p><p class="status-delivered">Đã giao</p></div>
                    </div>
                    <div class="center">
                        <div class="image">
                            <a href="productDetail.jsp">
                                <img src="assets/img/books/365TruyenKeHangDem.png" alt="" />
                            </a>
                        </div>
                        <div class="info">
                            <p class="book-name">365 Truyện kể hằng đêm 1</p>
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="quantity">Số lượng sản phẩm 3 </div>
                        <div class="price-cart">
                            <div class="total-price">
                                <span class="total">Tổng tiền:</span>
                                <span class="price">50.000 đ</span>
                            </div>
                            <div class="button">
                                <button class="rebuy">Mua lại</button>
                                <button>Xem chi tiết</button>
                                <button>Yêu cầu hoàn trả</button>
                            </div>
                        </div>
                    </div>
                </div>
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
            <a href="user-myOrders.html">Theo dõi đơn hàng</a>
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
<script>
        const menuItems = document.querySelectorAll(".menu-item");
        menuItems.forEach(item => {
            item.addEventListener("click", function() {
                // Xóa active ở tất cả
                menuItems.forEach(i => i.classList.remove("active"));
                // Thêm active vào mục được bấm
                this.classList.add("active");
            });
        });
</script>
</body>
</html>