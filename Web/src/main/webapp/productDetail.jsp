<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Chi tiết sản phẩm</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    />
    <link rel="stylesheet" href="assets/css/header.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Chakra+Petch:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cormorant+Garamond:ital,wght@0,300..700;1,300..700&family=Libre+Franklin:ital,wght@0,100..900;1,100..900&family=Merriweather+Sans:ital,wght@0,300..800;1,300..800&family=Playwrite+DE+SAS:wght@100..400&family=Sarabun:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="assets/css/footer.css"/>
    <link rel="stylesheet" href="assets/css/home.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bungee&family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/pDetail.css">
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
                    <a href="<c:url value="/login" />" class="button bt taikhoan">
                        <i class="fa-solid fa-user"></i>
                        <span>
                            <c:if test="${not empty user}">
                                ${user}
                            </c:if>
                            <c:if test="${empty user}">
                                Tài khoản
                            </c:if>
                        </span>
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
    <main>
        <div class="detail-container">
            <div class="detail">
                <div class="gallery">
                    <div class="thumbnail-column">
                        <img class="thumbnail active"
                             src="assets/img/books/365TruyenKeHangDemMuaHe.png"
                             alt="Ảnh sách 1"
                             data-main-image="assets/img/books/365TruyenKeHangDemMuaHe.png">
                        <img class="thumbnail "
                             src="assets/img/books/365TruyenKeHangDem.png"
                             alt="Ảnh sách 2"
                             data-main-image="assets/img/books/365TruyenKeHangDem.png">
                        <img class="thumbnail "
                             src="assets/img/books/365TruyenKeHangDemMuaThu.png"
                             alt="Ảnh sách 3"
                             data-main-image="assets/img/books/365TruyenKeHangDemMuaThu.png">
                    </div>

                    <div class="main-img">
                        <img id="mainImageDisplay"
                             src="${book.coverImgUrl}"
                             alt="Ảnh sách chính">
                    </div>
                </div>
                <div class="describe">
                    <p class="book-name">${book.title}</p>
                    <p class="rating">⭐⭐⭐⭐⭐</p>
                    <div class="price-cart">
                        <div class="price">
                            <strike><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</strike>
                            <p><fmt:formatNumber value="${book.priceDiscounted}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</p>
                        </div>
                        <div class="quantity">
                            <div class="number-input">
                                <button class="minus" onclick="minus()">-</button>
                                <input type="number" value="1" min="1" id="number-quantity" class="no-spinners" />
                                <button class="plus" onclick="plus()">+</button>
                            </div>
                        </div>
                        <button id="cart"><a href="shoppingCart.jsp">Thêm vào giỏ hàng</a> <i class="fa-solid fa-cart-plus"></i></button>
                        <button id="buy"><a href="ThanhToan.jsp">Mua ngay</a></button>
                        <span><i id="addHeart" class="fa-solid fa-heart"></i></span>
                    </div>
                    <div class="program">
                        <p>🛡️ Đổi trả miễn phí 7 ngày</p>
                        <p>🔥 Chỉ còn ${book.stock}</p>
                        <p>Đã bán: ${book.quantitySold}</p>
                    </div>
                    <div class="product-info">
                        <h3>Thông tin chi tiết</h3>
                        <div class="info-row">
                            <span class="label">Mã hàng</span>
                            <span class="value">${book.bookCode}</span>
                        </div>
                        <div class="info-row">
                            <span class="label">Tên Nhà Cung Cấp</span>
                            <span class="value">${book.provider}</span>
                        </div>
                        <div class="info-row">
                            <span class="label">Tác giả</span>
                            <span class="value">${book.author}</span>
                        </div>
                        <div class="info-row">
                            <span class="label">NXB</span>
                            <span class="value">${book.publisher}</span>
                        </div>
                        <div class="info-row">
                            <span class="label">Năm XB</span>
                            <span class="value">${book.publishedDate}</span>
                        </div>
                        <div class="info-row">
                            <span class="label">Trọng lượng (gr)</span>
                            <span class="value">${book.weight}</span>
                        </div>
                        <div class="info-row">
                            <span class="label">Kích Thước Bao Bì</span>
                            <span class="value">${book.bookSize}</span>
                        </div>
                        <div class="info-row">
                            <span class="label">Số trang</span>
                            <span class="value">${book.pagesNumber}</span>
                        </div>
                        <div class="info-row">
                            <span class="label">Hình thức</span>
                            <span class="value">${book.format}</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="book-content">
                <h5>📖 Mô tả sách: </h5>
                <p>${book.description}</p>
            </div>
        </div>
        <div class="reviews-section">

            <div class="rating-summary">
                <div class="rating-score">
                    <h2>5</h2>
                    <div class="stars">★★★★★</div>
                    <p>Dựa trên phần đánh giá</p>
                </div>

                <div class="rating-bars">
                    <div class="rating-row"><span>5</span><div class="rating-bar"><div class="rating-fill" style="width: 90%;"></div></div></div>
                    <div class="rating-row"><span>4</span><div class="rating-bar"><div class="rating-fill" style="width: 2%;"></div></div></div>
                    <div class="rating-row"><span>3</span><div class="rating-bar"><div class="rating-fill" style="width: 1%;"></div></div></div>
                    <div class="rating-row"><span>2</span><div class="rating-bar"><div class="rating-fill" style="width: 0%;"></div></div></div>
                    <div class="rating-row"><span>1</span><div class="rating-bar"><div class="rating-fill" style="width: 3%;"></div></div></div>
                </div>

                <div class="review-actions">
                    <button class="action-btn" id="writeReviewBtn">Viết đánh giá</button>
                </div>
            </div>

            <form id="reviewForm" action=""${pageContext.request.contextPath}/productDetail"" method="post">
                <h3>Viết đánh giá</h3>
                <input type="hidden" name="bookId" value="${book.id}">
                <select id="reviewStars" name="rating" required>
                    <option value="5">★★★★★</option>
                    <option value="4">★★★★</option>
                    <option value="3">★★★</option>
                    <option value="2">★★</option>
                    <option value="1">★</option>
                </select>
                <textarea id="reviewText" name="content" rows="4" placeholder="Nội dung đánh giá..." required></textarea>
                <button type="submit" id="submitReview">Hoàn thành</button>
            </form>


            <div class="review-navigation">
                <div class="nav-item active">Đánh giá</div>
            </div>

            <div class="sort-area">
                <select>
                    <option>Sắp xếp</option>
                    <option>5 sao</option>
                    <option>4 sao</option>
                    <option>3 sao</option>
                    <option>2 sao</option>
                    <option>1 sao</option>
                </select>
            </div>

            <div class="comment-list">
                <c:forEach var="cmt" items="${commentViewList}" >
                    <div class="comment-item">
                        <div class="comment-header">
                            <span class="comment-author">${cmt.name}</span>
                            <span class="comment-date">${cmt.createAt}</span>
                        </div>
                        <p class="comment-rating" style="color: #FFD700">
                            <c:forEach begin="1" end="${cmt.rating}">
                            ★
                            </c:forEach></p>
                        <p class="comment-text">${cmt.content}</p>
                    </div>
                </c:forEach>

            </div>

        </div>

        <div class="recommend">
            <div class="slogan"><h3>Chúng tôi coi trọng chất lượng và sự độc đáo</h3></div>
            <div class="valua-container">
                <div class="valua-card">
                    <figure>
                        <img src="assets/img/slogan/card1.png" alt="">
                        <figcaption>Chất lượng cao cấp</figcaption>
                    </figure>
                </div>
                <div class="valua-card">
                    <figure>
                        <img src="assets/img/slogan/card2.png" alt="">
                        <figcaption>Trải nghiệm nhập vai</figcaption>
                    </figure>
                </div>
                <div class="valua-card">
                    <figure>
                        <img src="assets/img/slogan/card3.png" alt="">
                        <figcaption>Sự lựa trọn hàng đầu</figcaption>
                    </figure>
                </div>
            </div>
            <div class="slogan"><h3>Những quyển sách có thể bạn sẽ thích</h3></div>
            <div class="list-product">
                <c:forEach var="book" items="${bookListRe}" begin="0" end="4">
                    <a href="productDetail?id=${book.id}&type=${book.type}">
                        <div class="card">
                            <img src="${book.coverImgUrl}" alt="${book.title}"/>
                            <p class="book-name">${book.title}</p>
                            <p class="rating">
                                ⭐⭐⭐⭐⭐
                            </p>
                            <div class="price-cart">
                                <p class="price">
                                    <s><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</s>
                                    <span><fmt:formatNumber value="${book.priceDiscounted}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</span>
                                </p>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div></a>
                </c:forEach>
            </div>
        </div>
    </main>
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
<script >
    //heart
    const heart = document.getElementById('addHeart');
    heart.addEventListener('click', function ()   {
        heart.style.color=heart.style.color==='red'?'gray':'red';
    })
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
    // quantity
    const input = document.querySelector(".number-input input");
    const minus =()=>{
        input.value =   input.value = Math.max(parseInt(input.value) - 1, parseInt(input.min));
    }
    const plus = () =>{
        input.value = parseInt(input.value) + 1;
    }

        const writeBtn = document.getElementById("writeReviewBtn");
        const form = document.getElementById("reviewForm");
        const submitBtn = document.getElementById("submitReview");
        const commentList = document.querySelector(".comment-list");

        // Bấm Write a Review
        writeBtn.addEventListener("click", () => {
        form.style.display = "block";
        writeBtn.style.display = "none";
    });

        //  Bấm Hoàn thành
        submitBtn.addEventListener("click", () => {
        const name = document.getElementById("reviewName").value;
        const stars = document.getElementById("reviewStars").value;
        const text = document.getElementById("reviewText").value;

        if (!name || !text) {
        alert("Vui lòng nhập đầy đủ thông tin.");
        return;
    }

    });


</script>
</body>
</html>
