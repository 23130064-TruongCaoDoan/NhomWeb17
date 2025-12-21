<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Danh sách sản phẩm</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    />
    <link rel="stylesheet" href="assets/css/header.css" />
    <link rel="stylesheet" href="assets/css/dsSanPham.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Chakra+Petch:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cormorant+Garamond:ital,wght@0,300..700;1,300..700&family=Libre+Franklin:ital,wght@0,100..900;1,100..900&family=Merriweather+Sans:ital,wght@0,300..800;1,300..800&family=Playwrite+DE+SAS:wght@100..400&family=Sarabun:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="assets/css/footer.css" />
</head>
<body>
<div class="page-wrapper">
    <c:import url="headerUser.jsp"></c:import>
    <div class="banner">
        <h1><c:if test="${not empty search}">
            ${search}
        </c:if>
            <c:if test="${empty search}">
                Sản Phẩm
            </c:if></h1>
    </div>
    <div class="content">
        <div class="filter">
            <div class="recipient">
                <div class="filter-title"><h2>Bộ lọc</h2></div>
                <hr>
                <div class="filter-header" onclick="toggleOptions()">Đối tượng</div>
                <div class="filter-options" id="options">
                    <button>Trẻ sơ sinh</button>
                    <button>Trẻ 1-3 tuổi</button>
                    <button>Trẻ >4 tuổi</button>
                    <button>Sinh đôi</button>
                    <button>Anh chị em</button>
                    <button>Gia đình</button>
                </div>
            </div>
            <div class="occasions">
                <hr>
                <div class="filter-header" onclick="toggleOptions2()">Theo thể loại</div>
                <div class="filter-options" id="options-2">
                    <button>Truyện tranh</button>
                    <button>Sách ảnh</button>
                    <button>Giáo dục</button>
                    <button>Tô màu</button>
                </div>
            </div>
            <button class="clear-filter">Xoá bộ lọc</button>
        </div>
        <div class="listProducts">
            <c:forEach var="book" items="${bookList}">
                <a href="productDetail?id=${book.id}&type=${book.type}">
                    <div class="card">
                        <img src="${book.coverImgUrl}" alt="${book.title}"/>
                        <p class="book-name">${book.title}</p>
                        <p class="rating">
                        </p>
                        <div class="price-cart">
                            <p class="price">
                                <c:if test="${book.priceDiscounted > 0}" >
                                    <span><fmt:formatNumber value="${book.priceDiscounted}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</span>
                                    <s><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true" maxFractionDigits="0"/></s>
                                </c:if>
                                <c:if test="${book.priceDiscounted == 0}" >
                                    <span><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true" maxFractionDigits="0"/> Đ</span>
                                </c:if>
                            </p>
                            <span><i class="fa-solid fa-cart-plus"></i></span>
                        </div>
                    </div></a>
            </c:forEach>
        </div>
        <div id="pagination">
            <c:if test="${currenPage > 1}">
                <a href="dsSanPham?page=${currentPage - 1}">«</a>
            </c:if>

            <c:forEach begin="1" end="${totalPages}" var="i">
                <a href="dsSanPham?page=${i}"
                   class="${i == currentPage ? 'active' : ''}">
                        ${i}
                </a>
            </c:forEach>

            <c:if test="${currentPage < totalPages}">
                <a href="dsSanPham?page=${currentPage + 1}">»</a>
            </c:if>
        </div>
    </div>
    <c:import url="footerUser.jsp"></c:import>
</div>
</body>

</html>
