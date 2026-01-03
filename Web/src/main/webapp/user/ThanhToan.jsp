<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
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
    <c:import url="headerUser.jsp"> </c:import>
    <div class="content">
        <div class="container">

            <!-- address  -->
            <div class="checkout-section">
                <div class="section-title">ĐỊA CHỈ GIAO HÀNG</div>
                <c:forEach var="address" items="${listAddress}">
                <div class="address-item">
                    <div class="address-info">
                        <input type="radio" name="address" value="${address.getId()}" ${address.getIsDefault()? "checked":""}>
                        <span><b>${address.getName()}</b> | ${address.getSpecificAddress()}, ${address.getWard()}, ${address.getDistrict()}, ${address.getCity()}| ${address.getPhone()}</span>
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
                </c:forEach>
                <a class="add-address" href="user-newAddress.jsp"><i class="fa-solid fa-plus"></i> Giao hàng đến địa
                    chỉ khác</a>
            </div>

            <!-- ship  -->
            <div class="checkout-section">
                <div class="section-title">PHƯƠNG THỨC VẬN CHUYỂN</div>
                <div class="shipping-item">
                    <input type="radio" value="standard" name="ship" checked>
                    <div>
                        <strong>Giao hàng nhanh: 60.000 đ</strong><br>
                        Dự kiến giao: Chủ Nhật - 09/11
                    </div>
                </div>
                <div class="shipping-item">
                    <input type="radio" value="express" name="ship">
                    <div>
                        <strong>Giao hàng tiêu chuẩn: 30.000 đ</strong><br>
                        Dự kiến giao: Chủ Nhật - 09/11
                    </div>
                </div>
            </div>

            <!-- pay  -->
            <div class="checkout-section">
                <div class="section-title">PHƯƠNG THỨC THANH TOÁN</div>
                <div class="payment-item">
                    <input type="radio" class="vnpay" value="1" name="payment">
                    <img src="https://vinadesign.vn/uploads/images/2023/05/vnpay-logo-vinadesign-25-12-57-55.jpg"
                         alt="">
                    <span>VNPAY</span>
                </div>
                <div class="payment-item">
                    <input type="radio" class="momo" value="2" name="payment">
                    <img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsiZGF0YSI6MjA0NjgzMiwicHVyIjoiYmxvYl9pZCJ9fQ==--6d1081fa86f1300daa38e2cb2fd3ffc5a28b6592/eyJfcmFpbHMiOnsiZGF0YSI6eyJmb3JtYXQiOiJwbmciLCJyZXNpemVfdG9fbGltaXQiOlszMDAsMzAwXX0sInB1ciI6InZhcmlhdGlvbiJ9fQ==--e1d036817a0840c585f202e70291f5cdd058753d/MoMo%20Logo.png"
                         alt="">
                    <span>Ví Momo</span>
                </div>
                <div class="payment-item">
                    <input type="radio" class="money" value="3" name="payment" checked>
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5lvx2wxsU3oCisTG1mwVJfl7Jb8et02zZwg&s"
                         alt="">
                    <span>Thanh toán tiền mặt khi nhận hàng</span>
                </div>
            </div>

            <!-- ThanhVien -->
            <div class="checkout-section">
                <div class="section-title">THÀNH VIÊN</div>
                <div class="member-info">
                    <div>Số Point hiện có: <span class="highlight">${user.getPoint()}</span></div>
                    <label><input type="checkbox" id="usePoint"> Dùng point để thanh
                        toán</label><br>
                </div>
            </div>

            <!-- gift  -->
            <div class="checkout-section">
                <div class="section-title">VOUCHER</div>
                <div class="gift-infor">
                    <div class="input-row">
                        <div class="input-group">
                            <a href="#" class="more-voucher" id="choose-code">Chọn mã khuyến mãi</a>
                        </div>
                        <div style="color: #f7941d">
                            <c:if test="${numApplyVoucher >0}"> <span >Đã áp dụng ${numApplyVoucher} voucher </span> </c:if>
                            <c:if test="${numApplyVoucher <=0}"><span > Chưa voucher nào được áp dụng </span> </c:if>
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
                    <c:forEach var="item" items="${cart.items}">
                    <div class="order-item">
                        <img src="${item.book.coverImgUrl}" alt="De men" class="order-img">
                        <div class="order-info">
                            <div class="order-name">${item.book.title}</div>
                        </div>
                        <div class="order-prices">
                            <div class="order-price-current"><p class="cost"><fmt:formatNumber value="${item.price}" pattern="#,###"/> đ</p></div>
                            <c:if test="${item.book.getPriceDiscounted() >0}">
                            <div class="order-price-old"><p class="cost"><fmt:formatNumber value="${item.book.getPrice()}" pattern="#,###"/> đ</p></div>
                            </c:if>
                        </div>
                        <div class="order-qty">${item.quantity}</div>
                        <div class="order-total"><p class="cost"><fmt:formatNumber value="${item.price*item.quantity}" pattern="#,###"/> đ</p></div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="checkout-summary">
            <div class="container">
                <div class="checkout-total">
                    <div class="total-row">
                        <span>Thành tiền</span>
                        <span><fmt:formatNumber value="${cart.totalBill}" pattern="#,###"/> đ</span>
                    </div>
                    <div class="total-row">
                        <span>Phí vận chuyển ()</span>
                        <span>32.000 đ</span>
                    </div>
                    <div class="total-row" id="pointDiscountRow" style="display:none;">
                        <span>Giảm bằng point</span>
                        <span class="highlight">-<span id="pointDiscount">0</span> đ</span>
                    </div>
                    <div class="total-row total-final">
                        <strong>Tổng Số Tiền (giảm giá và vận chuyển)</strong>
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
    <div class="listVoucher">
        <div class="layout discounts">
            <div class="title Discount">
                <div class="ten">Mã giảm giá</div>
                <div class="numberAply">Áp dụng tối đa: 1</div>
            </div>
            <div class="list discount">
                <c:if test="${empty listVoucherDiscount}">
                    <div style="text-align: center; color: #444444; margin: 10px 0px">KHÔNG CÓ VOUCHER</div>
                </c:if>
                <c:forEach var="voucher" items="${listVoucherDiscount}">
                    <div class="voucher-item"
                         data-code="${voucher.code}"
                         data-description="${voucher.description}"
                         data-condition-price="${voucher.conditionPrice}"
                         data-categories="${voucher.conditionBook}"
                         data-publishers="${voucher.conditionPublisher}"
                         data-start="${voucher.getStartDateFormatted()}"
                         data-end="${voucher.getEndDateFormatted()}"
                    >
                        <div class="voucher-left"><i class="fa-solid fa-ticket"></i></div>
                        <div class="voucher-right">
                            <b>${voucher.description}</b>
                            <button class="voucher-detail" data-voucher="voucher1">Chi tiết</button>
                            <br>
                            Đơn hàng từ ${voucher.conditionPrice} <br>
                            <div class="voucher-code">${voucher.code}</div>
                            <div class="voucher-footer">
                                <span>HSD:${voucher.getStartDateFormatted()} - ${voucher.getEndDateFormatted()}</span>
                                <c:choose>
                                    <c:when test="${sessionScope.appliedDiscountVoucher != null && sessionScope.appliedDiscountVoucher.id == voucher.id}">
                                        <form action="cancelVoucher" method="post">
                                            <button type="submit" style="background:#dc3545;color:white;border:none;padding:6px 12px;border-radius:4px;">
                                                <input type="hidden" name="page" value="2">
                                                <input type="hidden" name="type" value="discount">
                                                Hủy
                                            </button>
                                        </form>
                                    </c:when>
                                    <c:otherwise>
                                        <c:if test="${empty sessionScope.appliedDiscountVoucher}">
                                            <form action="applyVoucher" method="post">
                                                <input type="hidden" name="voucherId" value="${voucher.id}">
                                                <input type="hidden" name="page" value="2">
                                                <button type="submit" style="background:#28a745;color:white;border:none;padding:6px 12px;border-radius:4px;">
                                                    Áp dụng
                                                </button>
                                            </form>
                                        </c:if>
                                        <c:if test="${not empty sessionScope.appliedDiscountVoucher}">
                                            <button disabled style="opacity:0.6;cursor:not-allowed;padding:6px 12px;border-radius:4px;">
                                                Áp dụng
                                            </button>
                                        </c:if>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <c:if test="${listVoucherDiscount.size()>2}">
                <button class="toggle-btnDis">Xem thêm</button>
            </c:if>
        </div>
        <div class="layout ships">
            <div class="title Discount">
                <div class="ten">Mã vận chuyển</div>
                <div class="numberAply">Áp dụng tối đa: 1</div>
            </div>
            <div class="list ship">
                <c:if test="${empty listVoucherShip}">
                    <div style="text-align: center; color: #444444; margin: 10px 0px">KHÔNG CÓ VOUCHER</div>
                </c:if>
                <c:forEach var="voucher" items="${listVoucherShip}">
                    <div class="voucher-item"
                         data-code="${voucher.code}"
                         data-description="${voucher.description}"
                         data-condition-price="${voucher.conditionPrice}"
                         data-categories="${voucher.conditionBook}"
                         data-publishers="${voucher.conditionPublisher}"
                         data-start="${voucher.getStartDateFormatted()}"
                         data-end="${voucher.getEndDateFormatted()}"
                    >
                        <div class="voucher-left"><i class="fa-solid fa-ticket"></i></div>
                        <div class="voucher-right">
                            <b>${voucher.description}</b>
                            <button class="voucher-detail" data-voucher="voucher1">Chi tiết</button>
                            <br>
                            Đơn hàng từ ${voucher.conditionPrice} <br>
                            <div class="voucher-code">${voucher.code}</div>
                            <div class="voucher-footer">
                                <span>HSD:${voucher.getStartDateFormatted()} - ${voucher.getEndDateFormatted()}</span>
                                <c:choose>
                                    <c:when test="${sessionScope.appliedShipVoucher != null && sessionScope.appliedShipVoucher.id == voucher.id}">
                                        <form action="cancelVoucher" method="post">
                                            <input type="hidden" name="page" value="2">
                                            <input type="hidden" name="type" value="ship">
                                            <button type="submit" style="background:#dc3545;color:white;border:none;padding:6px 12px;border-radius:4px;">
                                                Hủy
                                            </button>
                                        </form>
                                    </c:when>
                                    <c:otherwise>
                                        <c:if test="${empty sessionScope.appliedShipVoucher}">
                                            <form action="applyVoucher" method="post">
                                                <input type="hidden" name="page" value="2">
                                                <input type="hidden" name="voucherId" value="${voucher.id}">
                                                <button type="submit" style="background:#28a745;color:white;border:none;padding:6px 12px;border-radius:4px;">
                                                    Áp dụng
                                                </button>
                                            </form>
                                        </c:if>
                                        <c:if test="${not empty sessionScope.appliedShipVoucher}">
                                            <button disabled style="opacity:0.6;cursor:not-allowed;padding:6px 12px;border-radius:4px;">
                                                Áp dụng
                                            </button>
                                        </c:if>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <c:if test="${listVoucherShip.size()>2}">
                <button class="toggle-btnDis">Xem thêm</button>
            </c:if>
        </div>
    </div>
</div>
<div id="voucherPopup" class="popup">
    <div class="popup-content">
        <h3>CHI TIẾT KHUYẾN MÃI</h3>
        <div class="popup-body">
            <div class="voucher-header-detail">
                <div class="voucher-left"><i class="fa-solid fa-ticket"></i></div>
                <div class="voucher-right-detail">
                    <b id="detailDescription"></b>
                    <div class="voucher-code" id="detailCode"></div>
                    <div class="voucher-expiry" id="detailExpiry"></div>
                </div>
            </div>

            <div class="voucher-conditions-detail">
                <h4>Điều kiện áp dụng</h4>
                <ul id="detailConditionsList">
                    <li>Đơn hàng tối thiểu: <span id="detailMinPrice"></span> VNĐ</li>
                    <li id="detailCategoriesLi" style="display:none;">Áp dụng cho các danh mục: <span id="detailCategories"></span></li>
                    <li id="detailPublishersLi" style="display:none;">Áp dụng cho nhà xuất bản: <span id="detailPublishers"></span></li>
                </ul>
                <p class="note-combine">Có thể sử dụng đồng thời với mã giảm phí vận chuyển.</p>
            </div>
        </div>
        <button class="cancel">×</button>
    </div>
</div>
<script>
    //voucher

    //voucher

    const openPopup = document.querySelector(".more-voucher");
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
            const voucherItem = btn.closest(".voucher-item");

            // Lấy dữ liệu từ data attributes
            const description = voucherItem.dataset.description || voucherItem.querySelector("b").textContent;
            const code = voucherItem.dataset.code || voucherItem.querySelector(".voucher-code").textContent;
            const start = voucherItem.dataset.start || "";
            const endDate = voucherItem.dataset.end || "";
            const minPrice = parseInt(voucherItem.dataset.conditionPrice || 0).toLocaleString();
            const categories = voucherItem.dataset.categories;
            const publishers = voucherItem.dataset.publishers;

            // Cập nhật nội dung popup
            document.getElementById("detailDescription").textContent = description;
            document.getElementById("detailCode").textContent = code;
            document.getElementById("detailExpiry").textContent = 'Hiệu lực: '+ start +' - '+endDate;
            document.getElementById("detailMinPrice").textContent = minPrice + " đ";

            // Xử lý danh mục và NXB (nếu có)
            const categoriesLi = document.getElementById("detailCategoriesLi");
            const publishersLi = document.getElementById("detailPublishersLi");

            if (categories && categories.trim() !== "") {
                document.getElementById("detailCategories").textContent = categories;
                categoriesLi.style.display = "list-item";
            } else {
                categoriesLi.style.display = "none";
            }

            if (publishers && publishers.trim() !== "") {
                document.getElementById("detailPublishers").textContent = publishers;
                publishersLi.style.display = "list-item";
            } else {
                publishersLi.style.display = "none";
            }

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
        if (!layout) return;

        const items = layout.querySelectorAll(listSelector + ' .voucher-item');
        const toggleBtn = layout.querySelector(toggleBtnClass);

        if (!toggleBtn) return;

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


    document.querySelectorAll(".voucher-item").forEach((item, index) => {
        console.log(`Voucher ${index + 1}:`);
        console.log("  Code:", item.dataset.code);
        console.log("  Description:", item.dataset.description);
        console.log("  Start date:", "'" + item.dataset.start + "'");
        console.log("  End date:", "'" + item.dataset.end + "'");
    });
    document.querySelectorAll('.voucher-form').forEach(form => {
        form.addEventListener('submit', function(e) {
            document.getElementById('overlay').style.display = 'none';
            document.getElementById('voucherListPopup').style.display = 'none';
        });
    });

    //

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
            window.location.href = "home.jsp";
        }
    })



    const usePointCheckbox = document.getElementById("usePoint");
    const pointDiscountRow = document.getElementById("pointDiscountRow");
    const pointDiscountEl = document.getElementById("pointDiscount");

    const userPoint = ${user.getPoint()};

    function formatMoney(n) {
        return n.toLocaleString("vi-VN");
    }

    if (userPoint < 100) {
        usePointCheckbox.disabled = true;
        pointWarning.style.display = "block";
    }

    usePointCheckbox.addEventListener("change", function () {
        if (this.checked) {
            pointDiscountEl.innerText = formatMoney(userPoint);
            pointDiscountRow.style.display = "flex";
        } else {
            pointDiscountRow.style.display = "none";
        }
    });







</script>
</body>
</html>