function toggleOptions() {
    const options = document.getElementById('options');
    options.style.display = options.style.display === 'flex' ? 'none' : 'flex';
}
function toggleOptions2() {
    const options = document.getElementById('options-2');
    options.style.display = options.style.display === 'flex' ? 'none' : 'flex';
}

const cards = document.querySelectorAll('.listProducts .card');
const pagination = document.getElementById('pagination');

const itemsPerPage = 6;
let currentPage = 1;

function showPage(page) {
  currentPage = page;
  const start = (page - 1) * itemsPerPage;
  const end = start + itemsPerPage;

  cards.forEach((card, index) => {
    card.style.display = (index >= start && index < end) ? 'block' : 'none';
  });

  renderPagination();
}

function renderPagination() {
  const pageCount = Math.ceil(cards.length / itemsPerPage);
  pagination.innerHTML = '';

  for (let i = 1; i <= pageCount; i++) {
    const btn = document.createElement('button');
    btn.textContent = i;
    if (i === currentPage) btn.classList.add('active');
    btn.addEventListener('click', () => showPage(i));
    pagination.appendChild(btn);
  }
}

showPage(1);
