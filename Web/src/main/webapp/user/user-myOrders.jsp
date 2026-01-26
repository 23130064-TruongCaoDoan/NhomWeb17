<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %><!DOCTYPE html>
<fmt:setLocale value="vi_VN"/>
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
        <div class="menuUser">
            <c:import url="/user/menuUser.jsp"></c:import>
        </div>
        <div class="manage-order">
            <div class="menu-bar">
                <div class="menu-item all active">
                    <p>Tất cả</p>
                </div>
                <div class="menu-item">
                    <p>Đang xử lí</p>
                </div>
                <div class="menu-item">
                    <p>Hoàn thành</p>
                </div>
                <div class="menu-item">
                    <p>Đã hủy</p>
                </div>
            </div>
            <div class="order-content">

                <c:if test="${empty orders}">
                    <p>Chưa có đơn hàng nào.</p>
                </c:if>

                <c:forEach var="o" items="${orders}">
                    <div class="card-order">

                        <!-- TOP -->
                        <div class="top">
                            <p class="order-id">Mã đơn hàng: #${o.orderId}</p>

                            <div class="order-status">
                                <p class="time">${o.orderDate}</p>

                                <p class="
                                        ${o.status == 'DELIVERED' ? 'status-delivered' :
                                          o.status == 'PENDING'   ? 'status-waiting'   :
                                          o.status == 'NOPAID'   ? 'status-waiting'   :
                                          o.status == 'SHIPPING'  ? 'status-shipping'  :
                                          o.status == 'CANCELLED' ? 'status-cancel'    : ''}">

                                    <c:choose>
                                        <c:when test="${o.status == 'DELIVERED'}">Đã giao</c:when>
                                        <c:when test="${o.status == 'PENDING'}">Đang xử lý</c:when>
                                        <c:when test="${o.status == 'NOPAID'}">Đang xử lý</c:when>
                                        <c:when test="${o.status == 'CANCELLED'}">Đã huỷ</c:when>
                                        <c:otherwise>${o.status}</c:otherwise>
                                    </c:choose>
                                </p>

                            </div>
                        </div>

                        <!-- CENTER -->
                        <div class="center" style="display: flex">
                            <div class="image">
                                <img src="${o.firstBookImage}" alt="" />
                            </div>

                            <div class="info">
                                <p class="book-name">Sản phẩm trong đơn hàng</p>
                            </div>
                        </div>

                        <!-- BOTTOM -->
                        <div class="bottom">
                            <div class="quantity">
                                Số lượng sản phẩm ${o.totalQuantity}
                            </div>

                            <div class="price-cart">
                                <div class="total-price">
                                    <span class="total">Tổng tiền:</span>
                                    <span class="price">
                            <fmt:formatNumber value="${ o.totalAmount}" type="currency"/>
                        </span>
                                </div>

                                <div class="button">
                                    <button onclick="window.location='my-order?id=${o.orderId}'">
                                        Xem chi tiết
                                    </button>
                                </div>
                            </div>
                        </div>

                    </div>
                </c:forEach>

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