// show password
const password = document.getElementById("password");
const confirmPassword = document.getElementById("confirm-password");
const toggle = document.getElementById("togglePassword");

toggle.addEventListener("click", () => {
    const type = password.type === "password" ? "text" : "password";
    password.type = type;
    confirmPassword.type = type;
});
