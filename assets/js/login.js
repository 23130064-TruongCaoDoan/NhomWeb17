const userInput = document.getElementById('iUser');
const passInput = document.getElementById('iPass');
const khungPass=document.querySelector(".MK")
const btnLogin = document.querySelector('.dangNhap');

const errorUser = document.querySelector('.User');
const errorPass = document.querySelector('.Pass');

btnLogin.addEventListener('click', (e) => {

    let hasError = false;
    if (userInput.value.trim() === '') {
        userInput.style.border = '1px solid red';
        errorUser.textContent = 'Vui lòng nhập tên đăng nhập hoặc email';
        errorUser.style.color = 'red';
        hasError = true;
    } else {
        userInput.style.border = '1px solid #0d3164';
        errorUser.textContent = '';
    }
    if (passInput.value.trim() === '') {
        khungPass.style.border = '1px solid red';
        errorPass.textContent = 'Vui lòng nhập mật khẩu';
        errorPass.style.color = 'red';
        hasError = true;
    } else {
        passInput.style.border = '1px solid #0d3164';
        errorPass.textContent = '';
    }
    if (!hasError) {
        window.location.href="../page/user-hoSoCaNhan.html";
    }
});

const bShow=document.querySelector(".show")
bShow.addEventListener("click",function (){
    if (passInput.type === "password") {
        passInput.type = "text";
    } else {
        passInput.type = "password";
    }
})