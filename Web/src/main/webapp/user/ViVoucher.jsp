<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Voucher</title>
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
    <link rel="stylesheet" href="assets/css/ViVoucher.css">
    <link rel="stylesheet" href="assets/css/voucher.css">
</head>
<body>
<div class="page-wrapper">
    <c:import url="/user/headerUser.jsp"></c:import>
    <div class="content">
        <div class="container">
<%--            <c:import url="/user/menuUser.jsp"></c:import>--%>
            <div class="voucher-box">
                <h2>Ví voucher</h2>
                <div class="voucher-list">

                    <div class="voucher-item">
                        <div class="voucher-left"><i class="fa-solid fa-ticket"></i></div>
                        <div class="voucher-right">
                            <b>Mã Giảm 10K - Toàn Sàn</b>
                            <button class="voucher-detail" data-voucher="voucher1">Chi tiết</button>
                            <br>
                            Đơn hàng từ 130k - Không bao gồm Manga, Ngoại Văn<br>
                            <div class="voucher-code">FHS10KT11</div>
                            <div class="voucher-footer">
                                <span>HSD: 30/11/2025</span>
                                <button>Copy mã</button>
                            </div>
                        </div>
                    </div>

                    <div class="voucher-item">
                        <div class="voucher-left"><i class="fa-solid fa-ticket"></i></div>
                        <div class="voucher-right">
                            <b>Mã Giảm 20K - Toàn Sàn</b>
                            <button class="voucher-detail" data-voucher="voucher1">Chi tiết</button>
                            <br>
                            Đơn hàng từ 249k - Không bao gồm Manga, Ngoại Văn<br>
                            <div class="voucher-code">FHS20KT11</div>
                            <div class="voucher-footer">
                                <span>HSD: 30/11/2025</span>
                                <button>Copy mã</button>
                            </div>
                        </div>
                    </div>

                    <div class="voucher-item">
                        <div class="voucher-left"><i class="fa-solid fa-ticket"></i></div>
                        <div class="voucher-right">
                            <b>Mã Giảm 40K - Toàn Sàn</b>
                            <button class="voucher-detail" data-voucher="voucher1">Chi tiết</button>
                            <br>
                            Đơn hàng từ 499k - Không bao gồm Manga, Ngoại Văn<br>
                            <div class="voucher-code">FHS40KT11</div>
                            <div class="voucher-footer">
                                <span>HSD: 30/11/2025</span>
                                <button>Copy mã</button>
                            </div>
                        </div>
                    </div>

                    <div class="voucher-item">
                        <div class="voucher-left"><i class="fa-solid fa-ticket"></i></div>
                        <div class="voucher-right">
                            <b>Mã Giảm 80K - Toàn Sàn</b>
                            <button class="voucher-detail" data-voucher="voucher1">Chi tiết</button>
                            <br>
                            Đơn hàng từ 999k - Không bao gồm Manga, Ngoại Văn<br>
                            <div class="voucher-code">FHS80KT11</div>
                            <div class="voucher-footer">
                                <span>HSD: 30/11/2025</span>
                                <button>Copy mã</button>
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
<div class="overlay" id="overlay"></div>
<div id="voucherPopup" class="popup">
    <div class="popup-content">
        <h3>ĐIỀU KIỆN ÁP DỤNG</h3>
        <div class="popup-body">
            <div class="voucher-list-detail">
                <p class="voucher-item-detail">Mã giảm giá 10K cho đơn hàng từ 130K</p>
                <p class="voucher-item-detail">Mã giảm giá 20K cho đơn hàng từ 249K</p>
                <p class="voucher-item-detail">Mã giảm giá 40K cho đơn hàng từ 499K</p>
                <p class="voucher-item-detail">Mã giảm giá 80K cho đơn hàng từ 999K</p>
            </div>
            <div class="voucher-condition">
                <p>- Áp dụng cho đơn hàng KHÔNG bao gồm giá trị của các sản phẩm Ngoại Văn, Manga, Phiếu Quà Tặng, Sách Giáo Khoa, Máy Tính và Giấy Photo cùng một số loại giấy và bảng khác.</p>
                <p>- Khách hàng có thể áp dụng cùng lúc với mã giảm phí vận chuyển.</p>
            </div>
        </div>
        <button class="copy-code">COPY MÃ</button>
        <button class="cancel">×</button>
    </div>
</div>
<script>
    const overlay = document.getElementById("overlay");
    const popup = document.getElementById("voucherPopup");
    const voucherBtns = document.querySelectorAll(".voucher-detail");

    voucherBtns.forEach(btn => {
        btn.addEventListener('click', (e) => {
            e.preventDefault();
            overlay.style.display = "block";
            popup.style.display = "block";
        });
    });

    overlay.addEventListener('click', () => {
        overlay.style.display = "none";
        popup.style.display = "none";
    });
    const cancelBtns = document.querySelectorAll(".cancel");
    cancelBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            overlay.style.display = "none";
            popup.style.display = "none";
        });
    });
</script>
</body>
</html>