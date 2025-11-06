document.addEventListener('DOMContentLoaded', function() {
    const mainImage = document.getElementById('mainImageDisplay');
    const thumbnails = document.querySelectorAll('.thumbnail-column .thumbnail');

    thumbnails.forEach(thumbnail => {
        thumbnail.addEventListener('click', function() {
            thumbnails.forEach(t => t.classList.remove('active'));
            this.classList.add('active');
            mainImage.src = this.dataset.mainImage;
        });
    });
});
const heart = document.getElementById('addHeart')
heart.addEventListener('click', function() {
    heart.style.color = heart.style.color === 'red' ? 'gray' : 'red';
})