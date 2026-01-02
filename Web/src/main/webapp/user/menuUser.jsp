<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<div class="nameUser">
    <div class="anh"><i class="fa-solid fa-user"></i></div>
    <div class="name">
        ${sessionScope.user.name}
    </div>

    <div class="bacThanhVien">
        <%--                        ${sessionScope.user.memberLevel}--%>Bạc
    </div>
    <div class="point">
       Điểm: ${sessionScope.user.point}
    </div>
</div>
<div class="menuMain">
    <a href="user-hoSoCaNhan.jsp" class="menu ttcn">
        <i class="fa-regular fa-user"></i>
        <span>Thông tin cá nhân</span>
        <i class="fa-solid fa-arrow-down"></i>
    </a>

    <div class="menuInfor">
        <a href="user-hoSoCaNhan.jsp" class="title prof"><span>Hồ sơ cá nhân</span></a>
        <a href="user-address.jsp" class="title address"><span>Sổ địa chỉ</span></a>
        <a href="user-changePassword.jsp" class="title passw"><span>Đổi mật khẩu</span></a>
        <a href="user_UuDaiThanhVien.jsp" class="title member"><span>Ưu đãi thành viên</span></a>
    </div>

    <a href="user-myOrders.jsp" class="menu donhang">
        <i class="fa-solid fa-receipt"></i>
        <span>Đơn hàng của tôi</span>
    </a>

    <a href="ViVoucher.jsp" class="menu Voucher">
        <i class="fa-solid fa-ticket"></i>
        <span>Ví voucher</span>
    </a>

    <a href="user-thongbao.jsp" class="menu thongbao">
        <i class="fa-regular fa-bell"></i>
        <span>Thông báo</span>
    </a>

    <a href="user-spYeuThich.jsp" class="menu spYeuThich">
        <i class="fa-regular fa-heart"></i>
        <span>Sản phẩm yêu thích</span>
    </a>
</div>

<div class="btDangXuat">
    <a href="logout" class="dangXuat">Đăng xuất</a>
</div>
