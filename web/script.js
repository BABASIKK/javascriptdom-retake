function openModal(src) {
    document.getElementById('modalImage').src = src;
    document.getElementById('modal').classList.add('active');
}

function closeModal() {
    document.getElementById('modal').classList.remove('active');
}
