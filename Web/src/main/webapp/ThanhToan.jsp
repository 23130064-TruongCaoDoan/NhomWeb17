<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ThanhToan</title>
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"/>
    <link rel="stylesheet" href="assets/css/ThanhToan.css">
    <link rel="stylesheet" href="assets/css/voucher.css">
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

            <!-- address  -->
            <div class="checkout-section">
                <div class="section-title">ĐỊA CHỈ GIAO HÀNG</div>

                <div class="address-item">
                    <div class="address-info">
                        <input type="radio" name="address" checked>
                        <span><b>Trương Đoàn</b> | 699, Trường Tiểu Học Phước Lâm, Xã Phước Hậu, Huyện Cần Giuộc, Long An, VN | 0859934939</span>
                    </div>
                    <div class="address-actions">
                        <a href="user-newAddress.jsp" class="edit-btn" title="Chỉnh sửa">
                            <i class="fa-solid fa-pen"></i>
                        </a>
                        <span class="divider">|</span>
                        <button class="delete-btn" title="Xóa">
                            <i class="fa-solid fa-trash"></i>
                        </button>
                    </div>
                </div>

                <div class="address-item">
                    <div class="address-info">
                        <input type="radio" name="address">
                        <span><b>Trương Đoàn</b> | 699, Trường Tiểu Học Phước Lâm, Xã Dũng Liệt, Huyện Yên Phong, Bắc Ninh, VN | 0859934939</span>
                    </div>
                    <div class="address-actions">
                        <a href="user-newAddress.jsp" class="edit-btn" title="Chỉnh sửa">
                            <i class="fa-solid fa-pen"></i>
                        </a>
                        <span class="divider">|</span>
                        <button class="delete-btn" title="Xóa">
                            <i class="fa-solid fa-trash"></i>
                        </button>
                    </div>
                </div>

                <a class="add-address" href="user-newAddress.jsp"><i class="fa-solid fa-plus"></i> Giao hàng đến địa
                    chỉ khác</a>
            </div>

            <!-- ship  -->
            <div class="checkout-section">
                <div class="section-title">PHƯƠNG THỨC VẬN CHUYỂN</div>
                <div class="shipping-item">
                    <input type="radio" name="shipping" checked>
                    <div>
                        <strong>Giao hàng tiêu chuẩn: 32.000 đ</strong><br>
                        Dự kiến giao: Chủ Nhật - 09/11
                    </div>
                </div>
            </div>

            <!-- pay  -->
            <div class="checkout-section">
                <div class="section-title">PHƯƠNG THỨC THANH TOÁN</div>
                <div class="payment-item">
                    <input type="radio" class="vnpay" name="payment">
                    <img src="https://vinadesign.vn/uploads/images/2023/05/vnpay-logo-vinadesign-25-12-57-55.jpg"
                         alt="">
                    <span>VNPAY</span>
                </div>
                <div class="payment-item">
                    <input type="radio" class="momo" name="payment">
                    <img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsiZGF0YSI6MjA0NjgzMiwicHVyIjoiYmxvYl9pZCJ9fQ==--6d1081fa86f1300daa38e2cb2fd3ffc5a28b6592/eyJfcmFpbHMiOnsiZGF0YSI6eyJmb3JtYXQiOiJwbmciLCJyZXNpemVfdG9fbGltaXQiOlszMDAsMzAwXX0sInB1ciI6InZhcmlhdGlvbiJ9fQ==--e1d036817a0840c585f202e70291f5cdd058753d/MoMo%20Logo.png"
                         alt="">
                    <span>Ví Momo</span>
                </div>
                <div class="payment-item">
                    <input type="radio" class="money" name="payment">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5lvx2wxsU3oCisTG1mwVJfl7Jb8et02zZwg&s"
                         alt="">
                    <span>Thanh toán tiền mặt khi nhận hàng</span>
                </div>
            </div>

            <!-- ThanhVien -->
            <div class="checkout-section">
                <div class="section-title">THÀNH VIÊN</div>
                <div class="member-info">
                    <div>Số Point hiện có: <span class="highlight">0</span></div>
                    <label><input type="checkbox"> Dùng <span class="highlight">0 đ</span> Point để thanh
                        toán</label><br>
                    <div>Số lần freeship: <span class="highlight">0 lần</span></div>
                    <label><input type="checkbox"> Sử dụng freeship</label>
                </div>
            </div>

            <!-- gift  -->
            <div class="checkout-section">
                <div class="section-title">MÃ KHUYẾN MÃI / GIFT CARD</div>
                <div class="gift-infor">
                    <div class="input-row">
                        <label for="giftcode">Mã khuyến mãi / Gift Card</label>
                        <div class="input-group">
                            <input type="text" id="giftcode" placeholder="Nhập mã khuyến mãi / Gift Card">
                            <button class="apply-btn">Áp dụng</button>
                            <a href="#" id="choose-code">Chọn mã khuyến mãi</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ghi chu  -->
            <div class="checkout-section">
                <div class="section-title">THÔNG TIN KHÁC</div>
                <div class="other-content">
                    <label for="orderNote" class="other-label">Ghi chú</label>
                    <textarea id="orderNote" class="other-textarea" placeholder="Nhập ghi chú (nếu có)..."></textarea>
                </div>
            </div>

            <!-- cac san pham mua  -->
            <div class="checkout-section">
                <div class="section-title">KIỂM TRA LẠI ĐƠN HÀNG</div>
                <div class="order-review">
                    <div class="order-item">
                        <img src="assets/img/books/DeMen.jpg" alt="De men" class="order-img">
                        <div class="order-info">
                            <div class="order-name">Dế Mèn Phiêu Lưu Kí</div>
                        </div>
                        <div class="order-prices">
                            <div class="order-price-current">132.000 đ</div>
                            <div class="order-price-old">189.000 đ</div>
                        </div>
                        <div class="order-qty">1</div>
                        <div class="order-total">132.000 đ</div>
                    </div>
                </div>
            </div>

        </div>
        <div class="checkout-summary">
            <div class="container">
                <div class="checkout-total">
                    <div class="total-row">
                        <span>Thành tiền</span>
                        <span>132.000 đ</span>
                    </div>
                    <div class="total-row">
                        <span>Phí vận chuyển (Giao hàng tiêu chuẩn)</span>
                        <span>32.000 đ</span>
                    </div>
                    <div class="total-row total-final">
                        <strong>Tổng Số Tiền (gồm VAT)</strong>
                        <strong class="total-price">164.000 đ</strong>
                    </div>
                </div>
                <div class="buttonAndTerm">
                    <div class="terms">
                        <input type="checkbox" id="agree" checked>
                        <label for="agree">
                            Bằng việc tiến hành Mua hàng, Bạn đã đồng ý với
                            <a href="DieuKhoanSuDung.jsp">Điều khoản & Điều kiện của Chúng Tôi</a>
                        </label>
                    </div>
                    <button class="confirm-payment-btn">Xác nhận thanh toán</button>
                </div>
            </div>
        </div>


    </div>
</div>
<div class="overlay" id="overlay"></div>
<div class="popup">
    <h3>CHỌN KHUYẾN MÃI</h3>
    <div class="search">
        <input type="text" placeholder="Mã khuyến mãi / Gift card">
        <button class="apply">Áp dụng</button>
    </div>
    <div class="listVoucher">
        <div class="layout discounts">
            <div class="title Discount">
                <div class="ten">Mã giảm giá</div>
                <div class="numberAply">Áp dụng tối đa: 1</div>
            </div>
            <div class="list discount">
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
            </div>
            <button class="toggle-btnDis">Xem thêm</button>
        </div>
        <div class="layout ships">
            <div class="title Ship">
                <div class="ten">Mã vận chuyển</div>
                <div class="numberAply">Áp dụng tối đa: 1</div>
            </div>
            <div class="list ship">
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
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
                            <button>Áp dụng</button>
                        </div>
                    </div>
                </div>
            </div>
            <button class="toggle-btnShip">Xem thêm</button>
        </div>
    </div>
</div>
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
        <button class="copy-code">ÁP DỤNG</button>
        <button class="cancel">×</button>
    </div>
</div>
<script>
    //voucher

    const openPopup = document.getElementById("choose-code");
    const overlay = document.getElementById("overlay");
    const popup = document.querySelector(".popup");

    openPopup.addEventListener("click", (e) => {
        e.preventDefault();
        overlay.style.display = "block";
        popup.style.display = "block";
    });

    overlay.addEventListener("click", () => {
        overlay.style.display = "none";
        popup.style.display = "none";
        voucherPopup.style.display = "none";
    });



    // hiển thị chi tiết voucher
    const detailBtns = document.querySelectorAll(".voucher-detail");
    const voucherPopup = document.getElementById("voucherPopup");
    const cancelBtn = document.querySelector("#voucherPopup .cancel");

    detailBtns.forEach(btn => {
        btn.addEventListener("click", () => {
            popup.style.display = "none";
            voucherPopup.style.display = "block";
        });
    });

    // Đóng popup điều kiện
    cancelBtn.addEventListener("click", () => {
        voucherPopup.style.display = "none";
        popup.style.display = "block";
    });

    function setupSectionToggle(layoutSelector, listSelector, toggleBtnClass) {
        const layout = document.querySelector(layoutSelector);

        const items = layout.querySelectorAll(listSelector + ' .voucher-item');
        const toggleBtn = layout.querySelector(toggleBtnClass);


        items.forEach((v, i) => {
            if (i > 1) v.style.display = 'none';
            else v.style.display = 'flex';
        });

        toggleBtn.addEventListener('click', () => {
            const hiddenItems = Array.from(items).filter(v => v.style.display === 'none');

            if (hiddenItems.length > 0) {
                hiddenItems.forEach(v => v.style.display = 'flex');
                toggleBtn.textContent = 'Thu gọn';
            } else {
                items.forEach((v, i) => {
                    if (i > 1) v.style.display = 'none';
                });
                toggleBtn.textContent = 'Xem thêm';
            }
        });
    }

    setupSectionToggle('.layout.discounts', '.list.discount', '.toggle-btnDis');
    setupSectionToggle('.layout.ships', '.list.ship', '.toggle-btnShip');

    const vnpay=document.querySelector(".vnpay");
    const momo=document.querySelector(".momo");
    const money=document.querySelector(".money");
    const thanhtoan=document.querySelector(".confirm-payment-btn");

    thanhtoan.addEventListener("click", function (){
        if(vnpay.checked){
            window.location.href = "giaLapMOMO.html";
        }
        else if(momo.checked){
            window.location.href = "giaLapMOMO.html";
        }
        if(money.checked){
            alert("Đặt hàng thành công!");
            window.location.href = "home.html";
        }
    })


</script>
</body>
</html>