<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Danh sách sản phẩm</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    />
    <link rel="stylesheet" href="assets/css/header.css"/>
    <link rel="stylesheet" href="assets/css/dsSanPham.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Chakra+Petch:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cormorant+Garamond:ital,wght@0,300..700;1,300..700&family=Libre+Franklin:ital,wght@0,100..900;1,100..900&family=Merriweather+Sans:ital,wght@0,300..800;1,300..800&family=Playwrite+DE+SAS:wght@100..400&family=Sarabun:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="assets/css/footer.css"/>
</head>
<body>
<div class="page-wrapper">
    <c:import url="/user/headerUser.jsp"></c:import>
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
        <c:if test="${empty bookList}"><span STYLE="text-align: center; font-size: 20px; color: gray; margin: auto">KHÔNG CÓ SẢN PHẨM</span></c:if>
        <div class="listProducts">
            <c:forEach var="book" items="${bookList}">
                <div class="card">
                    <a href="productDetail?id=${book.id}&type=${book.type}">
                        <img src="${book.coverImgUrl}" alt="${book.title}"/>
                        <p class="book-name">${book.title}</p>
                    </a>
                    <p class="rating">
                    </p>
                    <div class="price-cart">
                        <p class="price">
                            <c:if test="${book.priceDiscounted > 0}">
                                    <span><fmt:formatNumber value="${book.priceDiscounted}" type="number"
                                                            groupingUsed="true" maxFractionDigits="0"/> Đ</span>
                                <s><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true"
                                                     maxFractionDigits="0"/> Đ</s>
                            </c:if>
                            <c:if test="${book.priceDiscounted == 0}">
                                    <span><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true"
                                                            maxFractionDigits="0"/> Đ</span>
                            </c:if>
                        </p>
                        <i class="fa-solid fa-cart-plus" onclick="addToCart(${book.id},1)"></i>
                    </div>
                </div>
            </c:forEach>
        </div>
        <c:if test="${not empty bookList}">
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
        </c:if>
    </div>
    <c:import url="/user/footerUser.jsp"></c:import>
</div>
</body>
<%--  <script>--%>
<%--      function toggleOptions() {--%>
<%--          const options = document.getElementById('options');--%>
<%--          options.style.display = options.style.display === 'flex' ? 'none' : 'flex';--%>
<%--      }--%>
<%--      function toggleOptions2() {--%>
<%--          const options = document.getElementById('options-2');--%>
<%--          options.style.display = options.style.display === 'flex' ? 'none' : 'flex';--%>
<%--      }--%>

<%--      const cards = document.querySelectorAll('.listProducts .card');--%>
<%--      const pagination = document.getElementById('pagination');--%>

<%--      const itemsPerPage = 6;--%>
<%--      let currentPage = 1;--%>

<%--      function showPage(page) {--%>
<%--          currentPage = page;--%>
<%--          const start = (page - 1) * itemsPerPage;--%>
<%--          const end = start + itemsPerPage;--%>

<%--          cards.forEach((card, index) => {--%>
<%--              card.style.display = (index >= start && index < end) ? 'block' : 'none';--%>
<%--          });--%>

<%--          renderPagination();--%>
<%--      }--%>

<%--      function renderPagination() {--%>
<%--          const pageCount = Math.ceil(cards.length / itemsPerPage);--%>
<%--          pagination.innerHTML = '';--%>

<%--          for (let i = 1; i <= pageCount; i++) {--%>
<%--              const btn = document.createElement('button');--%>
<%--              btn.textContent = i;--%>
<%--              if (i === currentPage) btn.classList.add('active');--%>
<%--              btn.addEventListener('click', () => showPage(i));--%>
<%--              pagination.appendChild(btn);--%>
<%--          }--%>
<%--      }--%>

<%--      showPage(1);--%>
<%--  </script>--%>
<script>
    function addToCart(bookId, quantity) {
        fetch("addItemShopping?bookId="+ bookId + "&quantity=" + quantity)
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
</script>
</html>
