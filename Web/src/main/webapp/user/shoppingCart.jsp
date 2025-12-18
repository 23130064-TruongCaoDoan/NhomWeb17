<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Giỏ Hàng</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    />
    <link rel="stylesheet" href="assets/css/header.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Chakra+Petch:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cormorant+Garamond:ital,wght@0,300..700;1,300..700&family=Libre+Franklin:ital,wght@0,100..900;1,100..900&family=Merriweather+Sans:ital,wght@0,300..800;1,300..800&family=Playwrite+DE+SAS:wght@100..400&family=Sarabun:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="assets/css/shoppingCart.css" />
    <link rel="stylesheet" href="assets/css/footer.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Bungee&family=Lobster&display=swap"
      rel="stylesheet"
    />
      <link rel="stylesheet" href="assets/css/voucher.css">
      <link rel="stylesheet" href="assets/css/ThanhToan.css">
  </head>
  <body>
    <div class="page-wrapper">
        <c:import url="headerUser.jsp"> </c:import>
      <div class="title-cart">
        <i class="fa-solid fa-cart-shopping"></i>
        <h1>Giỏ hàng</h1>
      </div>

      <div class="container-cart">
        <div class="left-container">
          <div class="left">
            <div class="header-cart">
              <input type="checkbox" id="select-all">
              <p>Chọn tất cả (1 sản phẩm)</p>
              <span>Số lượng</span>
              <span>Thành tiền</span>
            </div>
            <div class="card-item">
                <input type="checkbox" class="product-checkbox">
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
                <div class="number-input">
                  <button class="minus" onclick="minus()">-</button>
                  <input type="number" value="1" min="1" id="number-quanity" />
                  <button class="plus" onclick="plus()">+</button>
                </div>
              </div>
              <div class="total-cost">
                <p class="cost">80.000VNĐ</p>
              </div>
              <i class="fa-solid fa-trash"></i>
            </div>
          </div>
        </div>

        <div class="right-container">
          <div class="voucher">
            <a href="" class="more-voucher">
              <p><i class="fa-solid fa-ticket"></i> Khuyến Mãi</p>
              <p>Xem thêm ></p>
            </a>
            <div class="info-voucher">
              <h4>Mã Giảm 10K - Toàn Cửa Hàng</h4>
              <p>Đơn hàng từ 130k - Không bao gồm giá trị của sản phẩm sau: Manga,...</p>
              <div class="expired">
                <div>
                  <p>HSD: 30/11/2025</p>
                  <progress value="60" max="100"></progress>
                  <p>Mua thêm: 56.000VNĐ</p>
                </div>
                 
                 <button>Mua thêm</button>
              </div>
             

            </div>
          </div>
          <div class="bill">
            <div class="thanh-tien">
              <p>Thành tiền</p>
              <p>80.000VNĐ</p>
            </div>
            <div>
              <h3 class="total-price">Tổng số tiền (bao gồm VAT)</h3>
              <p>80.000VNĐ</p>
            </div>
          <button class="check-out" onclick="window.location.href='ThanhToan.jsp'">Đặt hàng</button>
          </div>
        </div> 
      </div>

        <c:import url="footerUser.jsp"> </c:import>
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
        const input = document.querySelector(".number-input input");
        const minus =()=>{
          input.value =   input.value = Math.max(parseInt(input.value) - 1, parseInt(input.min));
        }
        const plus = () =>{
            input.value = parseInt(input.value) + 1;
        }
        const selectAll = document.getElementById('select-all');
        const productCheckboxes = document.querySelectorAll('.product-checkbox');
        selectAll.addEventListener('change', () => {
          productCheckboxes.forEach(cb => cb.checked = selectAll.checked);
        });
        productCheckboxes.forEach(cb => {
          cb.addEventListener('change', () => {
            const allChecked = Array.from(productCheckboxes).every(c => c.checked);
            selectAll.checked = allChecked;
          });
        });


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
    </script>
  </body>
</html>
