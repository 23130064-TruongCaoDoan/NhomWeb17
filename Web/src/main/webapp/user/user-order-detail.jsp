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
    <link rel="stylesheet" href="assets/css/orderDetail.css">
    <link rel="stylesheet" href="assets/css/shoppingCart.css">
</head>
<body>
<c:import url="/user/headerUser.jsp"></c:import>
<div class="content">
    <div class="container">
        <c:import url="/user/menuUser.jsp"></c:import>
        <div class="manage-order">
            <div class="order-detail">
                <div style="display: flex;justify-content: space-between;">
                    <div class="state">
                        <h2>Mã Đơn Hàng #1308324</h2>
                        <p class="order-state">Đã giao</p>
                    </div>
                    <p class="order-date">Ngày mua:10/11/2025 - 21:51</p>
                </div>
                
                <div class="order-progess">
                    <div class="new-order">
                        <i class="fa-solid fa-clipboard-list"></i>
                        <span style="position: relative;top:-7px">
                            <span style="font-weight: bold;">Đơn hàng mới</span>
                            <br>
                            <span style="position: absolute;left: 0.4px;width: 10vw;top: 22px;font-size: small;">10/11/2025 - 21:51</span>

                        </span>
                        
                    </div>
                    <div class="order-pending">
                        <i class="fa-solid fa-box"></i>
                        <span style="font-weight: bold;">Đang xử lý</span>
                    </div>
                    <div class="order-end">
                        <i class="fa-solid fa-check"></i>
                        <span style="position: relative;top:-7px">
                            <span style="font-weight: bold;">Đã giao</span>
                        <br>
                        <span style="position: absolute;left: 0.4px;width: 10vw;top: 22px;font-size: small;">10/11/2025 - 21:51</span>
                        </span>
                        
                    </div>
                </div>
                <div class="order-info">
                    <div class="user-info">
                        <h3>Thông tin người nhận</h3>
                        <p>Trương Đoàn</p>
                        <p>SĐT: 032423435</p>
                        <p>Địa chỉ: 696, Xã Phước Hậu, Huyện Cần Giuộc, Long An, Việt nam</p>
                    </div>
                    <div class="payment-method">
                        <h3>Phương thức thanh toán</h3>
                        <p>Ví momo</p>
                        <p class="payment-state" style="color:rgb(22, 153, 17) ;">
                            Đã thanh toán
                        </p>
                    </div>
                    <div class="order-price">                   
                        <h3>Tổng tiền</h3>
                        <div>
                            <p>Tạm tính:</p>
                            <p>50.000VNĐ</p>
                        </div>
                        <div>
                            <p>Phí vận chuyển</p>
                            <p>0.000VNĐ</p>
                        </div>
                        <div>
                            <h3>Tổng số tiền (Gồm VAT):</h3>
                            <p>50.000VNĐ</p>
                        </div>
                    </div>
                </div>
                <div style="display: flex;justify-content: space-between;margin-top: 20px;">
                    <p class="order-note">*Trạng thái đơn hàng: Đã giao hàng thành công</p>
                    <button class="order-button">Mua Lại</button>
                </div>
                </div>
  
            <div class="footer-order-detail">
                <div class="shipping-method">
                    <h3>Phương thức vận chuyển</h3>
                    <p>Giao hàng tiêu chuẩn</p>
                </div>
                <div class="note">
                    <h3>Ghi chú:</h3>
                    <p>(không có)</p>
                </div>
            </div>
            <div class="order-detail-shipping">
                <div class="head-order-shipping">
                    <h2>Mã Đơn Hàng #1308324</h2>
                </div>
                <div class="order-progess">
                    <div class="new-order">
                        <i class="fa-solid fa-clipboard-list"></i>
                        <span style="position: relative;top:-7px">
                            <span style="font-weight: bold;">Đơn hàng mới</span>
                            <br>
                            <span style="position: absolute;left: 0.4px;width: 10vw;top: 22px;font-size: small;">10/11/2025 - 21:51</span>

                        </span>
                        
                    </div>
                    <div class="order-pending">
                        <i class="fa-solid fa-box"></i>
                        <span style="font-weight: bold;">Đã đến trung tâm phân loại</span>
                    </div>
                    <div class="order-end">
                        <i class="fa-solid fa-check"></i>
                        <span style="position: relative;top:-7px">
                            <span style="font-weight: bold;">Đã giao</span>
                        <br>
                        <span style="position: absolute;left: 0.4px;width: 10vw;top: 22px;font-size: small;">10/11/2025 - 21:51</span>
                        </span>
                        
                    </div>
                </div>
                <div class="timeline">
                    <div class="timeline-item active">
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h4 class="timeline-title">Thông tin vận chuyển</h4>
                            <p class="timeline-detail">Đã giao</p>
                            <p class="timeline-time">10/11/2025 - 21:51</p>
                        </div>
                    </div>
                    <div class="timeline-item">
                        <div class="timeline-marker"></div>
                        <div class="timeline-content">
                            <h4 class="timeline-title">Đã đến trung tâm phân loại</h4>
                            <p class="timeline-time">09/11/2025 - 10:30</p>
                        </div>
                    </div>
                </div>
            <div class="container-cart">
                <div class="left-container">
                <div class="left">
                    <div class="header-cart">
                    <p></p>
                    <p>sản phẩm</p>
                    <span>Số lượng</span>
                    <span>Thành tiền</span>
                    </div>
                    <div class="card-item">
                        
                    <img
                        src="assets/img/books/365TruyenKeHangDemMuaHe.png"
                        alt=""
                    />
                    <div class="item-info">
                        <h4>365 Truyện kể hằng đêm mùa hè</h4>
                        <div class="detail">
                        <p>Tác giả: Lưu Hồng Hà</p>
                        <p>Nhà xuất bản: Mỹ Thuật</p>
                        <p>Năm xuất bản: 2022</p>
                        </div>
                    </div>
                    <div class="quantity">                          
                        <p>1</p>
                    </div>
                    <div class="total-cost">
                        <p class="cost">80.000VNĐ</p>
                    </div>
                    
                    </div>
                </div>
                <div class="total-order-detail"style="display: flex;gap:5vw; justify-content: flex-end;margin-right: 7vw;margin-top: 20px;">
                    <h3>TỔNG TIỀN: </h3>
                    <h3 style="color:#0746ae ;">50.000VNĐ</h3>
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
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const menuItems = document.querySelectorAll(".menu-item");

        menuItems.forEach(item => {
            item.addEventListener("click", function() {
                menuItems.forEach(i => i.classList.remove("active"));
                this.classList.add("active");
            });
        });
    });
</script>
</body>
</html>