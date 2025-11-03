const overlay = document.getElementById("overlay");
const popup = document.getElementById("voucherPopup");
const voucherBtns = document.querySelectorAll(".voucher-detail");

voucherBtns.forEach(btn => {
    btn.addEventListener('click', (e) => {
        e.preventDefault();
        overlay.style.display = "block";
        popup.style.display = "block";
    });
});

overlay.addEventListener('click', () => {
    overlay.style.display = "none";
    popup.style.display = "none";
});
const cancelBtns = document.querySelectorAll(".cancel");
cancelBtns.forEach(btn => {
    btn.addEventListener('click', () => {
        overlay.style.display = "none";
        popup.style.display = "none";
    });
});
