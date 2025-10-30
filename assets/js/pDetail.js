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