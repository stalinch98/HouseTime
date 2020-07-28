# Django
from django.shortcuts import render
from admins.models import Reserva, Anuncios, Promocion


def QuienesSomos(request):
    return render( request, 'housetime/quienes_somos.html' )

"""
def Anuncios(request):
    return render( request, 'housetime/anuncios.html' )

def Contacto(request):
    return render(request, 'housetime/contacto.html')


def Promociones(request):
    return render(request, 'housetime/promociones.html')

def Blog(request):
    return render(request, 'housetime/blog.html')


def CompraDetalle(request):
    return render(request, 'housetime/anuncio_detalle.html')
"""

def housetime(request):

    cantClientes = Reserva.objects.count()
    cantDepartamentos = Anuncios.objects.filter(id_tipo=2).count()
    cantCasas = Anuncios.objects.filter(id_tipo=1).count()
    cantPromociones = Promocion.objects.count()

    inventario = [
        {
            'clientes': cantClientes,
            'casas': cantCasas,
            'departamentos': cantDepartamentos,
            'promociones': cantPromociones,
        }
    ]

    return render(request, 'housetime/index.html', {'inventario': inventario})