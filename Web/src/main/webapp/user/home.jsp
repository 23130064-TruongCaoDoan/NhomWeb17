<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Home</title>
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
</head>
<body>
<div class="page-wrapper">
    <c:import url="headerUser.jsp"> </c:import>
    <div class="content">
        <div class="container">
            <div class="event-carousel">
                <div class="slides">
                    <div class="slide active">
                        <a href="dsSanPham.jsp" class="halloween"><img src="assets/img/event/halloween.jpg"
                                                                       alt="Halloween"></a>
                    </div>
                    <div class="slide">
                        <a href="dsSanPham.jsp" class="10-10"><img src="assets/img/event/10-10.jpg" alt="10-10"></a>
                    </div>
                </div>
                <button class="prev">&#10094;</button>
                <button class="next">&#10095;</button>
            </div>
            <div class="sachh sale">
                <div class="title t"><span>Giảm giá</span><img src="assets/img/icon/sale.png" alt=""></div>
                <div class="dsbooks">
                    <c:forEach var="book" items="${booksListSale}" begin="0" end="4">
                        <div class="card">
                            <a href="productDetail?id=${book.id}&type=${book.type}">
                                <img src="${book.coverImgUrl}" alt="${book.title}"/>
                                <p class="book-name">${book.title}</p>
                            </a>
                            <p class="rating">
                            </p>
                            <div class="price-cart">
                                <p class="price">
                                    <c:if test="${book.priceDiscounted > 0}" >
                                        <s><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</s>
                                        <span><fmt:formatNumber value="${book.priceDiscounted}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</span>
                                    </c:if>
                                    <c:if test="${book.priceDiscounted == 0}" >
                                        <span><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</span>
                                    </c:if>
                                </p>
                                <i class="fa-solid fa-cart-plus" onclick="addToCart(${book.id},1)"></i>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="bt btsale">
                    <button onclick="location.href='dsSanPham.jsp'" class="xemThem">Xem Thêm<i
                            class="fa-solid fa-arrow-right"></i></button>
                </div>
            </div>
            <div class="sachh moi">
                <div class="title"><span>Góc sách mới cho bé</span><img src="assets/img/icon/iconNew.png"></div>
                <div class="dsbooks">
                    <c:forEach var="book" items="${booksListNew}" begin="0" end="4">
                            <div class="card">
                                <a href="productDetail?id=${book.id}&type=${book.type}">
                                <img src="${book.coverImgUrl}" alt="${book.title}"/>
                                <p class="book-name">${book.title}</p>
                                </a>
                                <p class="rating">
                                </p>
                                <div class="price-cart">
                                    <p class="price">
                                        <c:if test="${book.priceDiscounted > 0}" >
                                            <s><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</s>
                                            <span><fmt:formatNumber value="${book.priceDiscounted}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</span>
                                        </c:if>
                                        <c:if test="${book.priceDiscounted == 0}" >
                                            <span><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</span>
                                        </c:if>
                                    </p>
                                    <i class="fa-solid fa-cart-plus" onclick="addToCart(${book.id},1)"></i>
                                </div>
                            </div>
                    </c:forEach>
                </div>
                <div class="bt btmoi">
                    <button onclick="location.href='dsSanPham.jsp'" class="xemThem">Xem Thêm<i
                            class="fa-solid fa-arrow-right"></i></button>
                </div>
            </div>
            <div class="sachh yeuThich">
                <div class="title"><span>Sách được các bé yêu thích</span><i class="fa-solid fa-heart"></i></div>
                <div class="dsbooks">
                    <div class="card">
                        <a href="productDetail.jsp">
                            <img src="assets/img/books/365TruyenKeHangDemMuaThu.png" alt=""/>
                        </a>
                        <p class="book-name">365 Truyện kể hằng đêm 3</p>
                        <p class="rating">⭐⭐⭐⭐⭐</p>
                        <div class="price-cart">
                            <p class="price">50.000 Đ</p>
                            <i class="fa-solid fa-cart-plus"></i>
                        </div>
                    </div>
                    <div class="card">
                        <img src="assets/img/books/trangVietNam.png" alt=""/>
                        <p class="book-name">Trạng Việt Nam</p>
                        <p class="rating">⭐⭐⭐⭐⭐</p>
                        <div class="price-cart">
                            <p class="price">50.000 Đ</p>
                            <i class="fa-solid fa-cart-plus"></i>
                        </div>
                    </div>
                    <div class="card">
                        <img src="assets/img/books/365TruyenKeHangDem.png" alt=""/>
                        <p class="book-name">365 Truyện kể hằng đêm 1</p>
                        <p class="rating">⭐⭐⭐⭐⭐</p>
                        <div class="price-cart">
                            <p class="price">50.000 Đ</p>
                            <i class="fa-solid fa-cart-plus"></i>
                        </div>
                    </div>
                    <div class="card">
                        <img src="assets/img/books/CoTichTheGioi.jpg" alt=""/>
                        <p class="book-name">Tuyển tập cổ tích thế giới</p>
                        <p class="rating">⭐⭐⭐⭐⭐</p>
                        <div class="price-cart">
                            <p class="price">50.000 Đ</p>
                            <i class="fa-solid fa-cart-plus"></i>
                        </div>
                    </div>
                    <div class="card">
                        <img src="assets/img/books/guongDungCam.png" alt=""/>
                        <p class="book-name">Gương Dũng Cảm</p>
                        <p class="rating">⭐⭐⭐⭐⭐</p>
                        <div class="price-cart">
                            <p class="price">50.000 Đ</p>
                            <i class="fa-solid fa-cart-plus"></i>
                        </div>
                    </div>
                </div>
                <div class="bt btsachYeuThich">
                    <button onclick="location.href='dsSanPham.jsp'" class="xemThem">Xem Thêm<i
                            class="fa-solid fa-arrow-right"></i></button>
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
                <div class="slogan"><h3>Những quyến sách có thể bạn sẽ thích</h3></div>
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
        </div>
    </div>
    <c:import url="footerUser.jsp"> </c:import>
</div>
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const carousel = document.querySelector('.event-carousel');
        const slides = carousel.querySelectorAll('.slide');
        const nextBtn = carousel.querySelector('.next');
        const prevBtn = carousel.querySelector('.prev');

        let index = 0;
        const total = slides.length;

        function showSlide(i) {
            carousel.querySelector('.slides').style.transform = `translateX(-${i * 100}%)`;
        }

        nextBtn.addEventListener('click', () => {
            index = (index + 1) % total;
            showSlide(index);
        });

        prevBtn.addEventListener('click', () => {
            index = (index - 1 + total) % total;
            showSlide(index);
        });

        setInterval(() => {
            index = (index + 1) % total;
            showSlide(index);
        }, 3000);
    });
    function addToCart(bookId, quantity) {
        fetch("addItemShopping?bookId="+ bookId + "&quantity=" + quantity)
            .then(res => res.json())
            .then(data => {
                document.getElementById("totalItem").innerText = data.total;
                showToast("Đã thêm vào giỏ hàng");
            })
            .catch(err => console.log(err));
    }
    function showToast(message) {
        const toast = document.getElementById("toast");
        toast.innerText = message;
        toast.classList.add("show");

        setTimeout(() => {
            toast.classList.remove("show");
        }, 2000);
    }

</script>
</body>
</html>