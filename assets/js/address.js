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
