$(function() {
    let clientes2 = document.getElementById('clientes2');
    let viajes2 = document.getElementById('viajes2');
    let paquetes2 = document.getElementById('paquetes2');
    let promociones2 = document.getElementById('promociones2');

    $('#clientes').animateNumber({ number: parseFloat(clientes2.value) }, 12000);
    $('#viajes').animateNumber({ number: parseFloat(viajes2.value) }, 6000);
    $('#paquetes').animateNumber({ number: parseFloat(paquetes2.value) }, 25000);
    $('#promociones').animateNumber({ number: parseFloat(promociones2.value) }, 30000);
});