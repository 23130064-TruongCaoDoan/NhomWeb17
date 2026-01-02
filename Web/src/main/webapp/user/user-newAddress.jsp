<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Address</title>
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" />
    <link rel="stylesheet" href="assets/css/NewAddress.css">
</head>
<body>
<div class="page-wrapper">
    <c:import url="/user/headerUser.jsp"></c:import>
    <div class="content">
        <div class="container">
            <c:import url="/user/menuUser.jsp"></c:import>
            <div class="address-container">
                <h2>Thêm địa chỉ mới</h2>
             <form id="addressForm" action="add-address" method="post" novalidate>
                <div class="form-group">
                    <label>Tỉnh/Thành phố</label>
                    <select id="tinh">
                        <option value="">Chọn tỉnh</option>
                    </select>
                    <small class="error-msg"></small>
                </div>

                <div class="form-group">
                    <label>Quận/Huyện</label>
                    <select id="quan">
                        <option value="">Chọn quận</option>
                    </select>
                    <small class="error-msg"></small>
                </div>

                <div class="form-group">
                    <label>Xã/Phường</label>
                    <select id="xa">
                        <option value="">Chọn phường</option>
                    </select>
                    <small class="error-msg"></small>
                </div><button type="submit" class="save-btn">Lưu địa chỉ</button>
             </form>
            </div>
        </div>
    </div>
    <c:import url="/user/footerUser.jsp"></c:import>
</div>
<script>
    const tinh = document.getElementById("tinh");
    const quan = document.getElementById("quan");
    const xa = document.getElementById("xa");

    /* =====================
       LOAD DANH SÁCH TỈNH
    ===================== */
    fetch("https://provinces.open-api.vn/api/p/")
        .then(res => res.json())
        .then(data => {
            data.forEach(p => {
                const opt = document.createElement("option");
                opt.value = p.code;       // code tỉnh
                opt.textContent = p.name; // tên tỉnh
                tinh.appendChild(opt);
            });
        })
        .catch(err => console.error("Lỗi load tỉnh:", err));

    /* =====================
       CHỌN TỈNH → LOAD QUẬN
    ===================== */
    tinh.addEventListener("change", function () {
        quan.innerHTML = `<option value="">-- Chọn quận/huyện --</option>`;
        xa.innerHTML = `<option value="">-- Chọn xã/phường --</option>`;

        if (!this.value) return;

        fetch(`https://provinces.open-api.vn/api/p/${this.value}?depth=2`)
            .then(res => res.json())
            .then(data => {
                data.districts.forEach(d => {
                    const opt = document.createElement("option");
                    opt.value = d.code;
                    opt.textContent = d.name;
                    quan.appendChild(opt);
                });
            })
            .catch(err => console.error("Lỗi load quận:", err));
    });

    /* =====================
       CHỌN QUẬN → LOAD PHƯỜNG
    ===================== */
    quan.addEventListener("change", function () {
        xa.innerHTML = `<option value="">-- Chọn xã/phường --</option>`;

        if (!this.value) return;

        fetch(`https://provinces.open-api.vn/api/d/${this.value}?depth=2`)
            .then(res => res.json())
            .then(data => {
                data.wards.forEach(w => {
                    const opt = document.createElement("option");
                    opt.value = w.code;
                    opt.textContent = w.name;
                    xa.appendChild(opt);
                });
            })
            .catch(err => console.error("Lỗi load phường:", err));
    });
</script>

<script>
    document.getElementById("addressForm").addEventListener("submit", function (e) {
        e.preventDefault();

        const fields = [
            { id: "hoten", name: "Họ và tên" },
            { id: "sdt", name: "Điện thoại" },
            { id: "tinh", name: "Tỉnh/Thành phố" },
            { id: "quan", name: "Quận/Huyện" },
            { id: "xa", name: "Xã/Phường" },
            { id: "diachi", name: "Địa chỉ" },
        ];

        let isValid = true;

        fields.forEach((field) => {
            const input = document.getElementById(field.id);
            const errorMsg = input.nextElementSibling;

            if (!input.value.trim()) {
                errorMsg.textContent = `Vui lòng nhập ${field.name.toLowerCase()}.`;
                errorMsg.style.display = "block";
                input.classList.add("error");
                isValid = false;
            } else {
                errorMsg.textContent = "";
                errorMsg.style.display = "none";
                input.classList.remove("error");
            }


            if (field.id === "sdt" && input.value.trim()) {
                const phoneRegex = /^(0[1-9][0-9]{8})$/;
                if (!phoneRegex.test(input.value)) {
                    errorMsg.textContent = "Số điện thoại không hợp lệ (VD: 0972xxxxxx).";
                    errorMsg.style.display = "block";
                    input.classList.add("error");
                    isValid = false;
                }
            }
        });

        if (isValid) {
        }
    });

</script>
</body>
</html>