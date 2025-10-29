const carousel = document.querySelector('.event-carousel');
const slides = carousel.querySelectorAll('.slide');
const nextBtn = carousel.querySelector('.next');
const prevBtn = carousel.querySelector('.prev');

let index = 0;
const total = slides.length;

function showSlide(i) {
    slides.forEach(slide => slide.classList.remove('active'));
    slides[i].classList.add('active');
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
