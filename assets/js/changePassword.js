document.getElementById("passwordForm").addEventListener("submit", function (e) {
    e.preventDefault();

    const oldPass = document.getElementById("oldPass");
    const newPass = document.getElementById("newPass");
    const confirmPass = document.getElementById("confirmPass");

    const fields = [
        { el: oldPass, name: "mật khẩu hiện tại" },
        { el: newPass, name: "mật khẩu mới" },
        { el: confirmPass, name: "xác nhận mật khẩu mới" }
    ];

    let isValid = true;

    // Kiểm tra ô trống
    fields.forEach(f => {
        const errorMsg = f.el.nextElementSibling;
        if (!f.el.value.trim()) {
            errorMsg.textContent = `Vui lòng nhập ${f.name}.`;
            errorMsg.style.display = "block";
            f.el.classList.add("error");
            isValid = false;
        } else {
            errorMsg.textContent = "";
            errorMsg.style.display = "none";
            f.el.classList.remove("error");
        }
    });

    // Nếu có dữ liệu, kiểm tra mật khẩu mới
    if (newPass.value && newPass.value.length < 6) {
        const errorMsg = newPass.nextElementSibling;
        errorMsg.textContent = "Mật khẩu mới phải có ít nhất 6 ký tự.";
        errorMsg.style.display = "block";
        newPass.classList.add("error");
        isValid = false;
    }

    // Kiểm tra xác nhận mật khẩu
    if (newPass.value && confirmPass.value && newPass.value !== confirmPass.value) {
        const errorMsg = confirmPass.nextElementSibling;
        errorMsg.textContent = "Mật khẩu xác nhận không trùng khớp.";
        errorMsg.style.display = "block";
        confirmPass.classList.add("error");
        isValid = false;
    }

    if (isValid) {
        alert("Đổi mật khẩu thành công!");
        // Gửi form thật tại đây nếu cần
    }
});
