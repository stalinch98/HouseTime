$(function() {

    let latitud = document.getElementById('latitud');
    let longitud = document.getElementById('longitud');

    let map = L.map('map').setView([parseFloat(latitud.value), parseFloat(longitud.value)], 13);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    L.marker([parseFloat(latitud.value), parseFloat(longitud.value)]).addTo(map).openPopup();

});