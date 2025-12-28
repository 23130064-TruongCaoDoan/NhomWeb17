<%
    boolean isLoggedIn = session.getAttribute("user") != null;
%>
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
    <c:import url="headerUser.jsp"> </c:import>
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
                    <p class="rating">
                        <c:forEach begin="1" end="${averageRating}">
                            ⭐
                        </c:forEach></p>
                    <div class="price-cart">
                        <div class="price">
                            <c:if test="${book.priceDiscounted > 0}">
                                <strike><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true"
                                                          maxFractionDigits="0"/> Đ</strike>
                                <p><fmt:formatNumber value="${book.priceDiscounted}" type="number" groupingUsed="true"
                                                     maxFractionDigits="0"/> Đ</p>
                            </c:if>
                            <c:if test="${book.priceDiscounted == 0}">
                                <p><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true"
                                                     maxFractionDigits="0"/> Đ</p>
                            </c:if>
                        </div>
                        <form action="addItemShopping" method="get" style="display: flex; flex-direction: row; gap: 15px">
                            <input type="hidden" name="bookId" value="${book.id}">
                            <div class="quantity" style="padding-top: 10px;">
                                <div class="number-input">
                                    <button type="button" class="minus" onclick="minus()">-</button>
                                    <input type="number" name="quantity" value="1" min="1" max="1000" id="number-quantity" class="no-spinners"/>
                                    <button type="button" class="plus" onclick="plus()">+</button>
                                </div>
                            </div>

                            <button type="submit" id="cart" onclick="addToCartDetail()">Thêm vào giỏ hàng<i
                                    class="fa-solid fa-cart-plus"></i></button>
                        </form>
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
                    <h2>${averageRating}</h2>
                    <div class="stars" style="color: #FFD700">
                        <c:forEach begin="1" end="${averageRating}">
                            ★
                        </c:forEach></div>
                    <p>Dựa trên phần đánh giá</p>
                </div>

                <div class="rating-bars">
                    <c:forEach begin="1" end="5" var="i">
                        <c:set var="percent" value="0"/>

                        <c:forEach var="r" items="${ratingList}">
                            <c:if test="${r.rating == i}">
                                <c:set var="percent" value="${r.percent}"/>
                            </c:if>
                        </c:forEach>

                        <div class="rating-row">
                            <span>${i}</span>
                            <div class="rating-bar">
                                <div class="rating-fill" style="width: ${percent}%;"></div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="review-actions">
                    <button class="action-btn" id="writeReviewBtn">Viết đánh giá</button>
                </div>
            </div>

            <form id="reviewForm" action="${pageContext.request.contextPath}/comment" method="post">
                <h3>Viết đánh giá</h3>
                <input id="bookId" type="hidden" name="bookId" value="${book.id}">
                <input type="hidden" name="type" value="${book.type}">
                <select id="reviewStars" name="rating" required>
                    <option value="5">★★★★★</option>
                    <option value="4">★★★★</option>
                    <option value="3">★★★</option>
                    <option value="2">★★</option>
                    <option value="1">★</option>
                </select>
                <textarea id="reviewText" name="content" rows="4" placeholder="Nội dung đánh giá..."
                          required></textarea>
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
            <div id="commentSection">
                <div class="comment-list">
                    <c:forEach var="cmt" items="${commentViewList}">
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
                            <div class="price-cart">
                                <p class="price"
                                   style="display: flex;flex-direction: column; width: 100%; text-align: center; margin: auto; margin-top: 20px">
                                    <s><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true"
                                                         maxFractionDigits="0"/> Đ</s>
                                    <span><fmt:formatNumber value="${book.priceDiscounted}" type="number"
                                                            groupingUsed="true" maxFractionDigits="0"/> Đ</span>
                                </p>
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </div>
    </main>
    <c:import url="footerUser.jsp"> </c:import>
</div>
<script>
    //heart
    const heart = document.getElementById('addHeart');
    heart.addEventListener('click', function () {
        heart.style.color = heart.style.color === 'red' ? 'gray' : 'red';
    })
    document.addEventListener('DOMContentLoaded', function () {
        const mainImage = document.getElementById('mainImageDisplay');
        const thumbnails = document.querySelectorAll('.thumbnail-column .thumbnail');

        thumbnails.forEach(thumbnail => {
            thumbnail.addEventListener('click', function () {
                thumbnails.forEach(t => t.classList.remove('active'));
                this.classList.add('active');
                mainImage.src = this.dataset.mainImage;
            });
        });
    });
    // quantity
    const input = document.getElementById("number-quantity");

    function minus() {
        input.value = Math.max(parseInt(input.value) - 1, parseInt(input.min));
    }

    function plus() {
        input.value = Math.min(parseInt(input.value) + 1, parseInt(input.max));
    }


    const writeBtn = document.getElementById("writeReviewBtn");
    const form = document.getElementById("reviewForm");
    const submitBtn = document.getElementById("submitReview");
    const commentList = document.querySelector(".comment-list");

    // Bấm Write a Review
    writeBtn.addEventListener("click", () => {
        form.style.display = form.style.display === "block" ? "none" : "block";
        // writeBtn.style.display = "none";
    });

    function addToCartDetail() {
        const bookId = document.getElementById("bookId").value;
        const quantity = document.getElementById("number-quantity").value;

        fetch("addItemShopping?bookId=" + bookId + "&quantity=" + quantity)
            .then(res => res.json())
            .then(data => {
                document.getElementById("totalItem").innerText = data.total;
                show("Đã thêm vào giỏ hàng");
            })
            .catch(err => console.log(err));
    }
    function show(message) {
        const toast = document.getElementById("toast");
        toast.innerText = message;
        toast.classList.add("show");

        setTimeout(() => {
            toast.classList.remove("show");
        }, 2000);
    }
    const isLoggedIn = <%= isLoggedIn %>;
    document.getElementById("reviewForm").addEventListener("submit", function (e) {
        e.preventDefault();
        console.log("submit");

        if (!isLoggedIn) {
            window.location.href = "login";
            return;
        }

        fetch(this.action, {
            method: "POST",
            body: new FormData(this),
            credentials: "same-origin"
        })
            .then(res => {
                if (res.ok) {
                    window.location.reload();
                }
            })
            .catch(err => console.error(err));
    });
</script>
</body>
</html>