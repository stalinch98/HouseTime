$(function() {

    var latitud = document.getElementById('latitud').value;
    var longitud = document.getElementById('longitud').value;
    var map = L.map('map').setView([parseFloat(latitud), parseFloat(longitud)], 13);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    L.marker([parseFloat(latitud), parseFloat(longitud)]).addTo(map).openPopup();

});