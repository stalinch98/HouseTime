# Django
from django.shortcuts import render
from admins.models import Reserva as r, Anuncios as a, Promocion as p


def QuienesSomos(request):
    return render( request, 'housetime/quienes_somos.html' )


def Anuncios(request):
    return render( request, 'housetime/anuncios.html' )


def Contacto(request):
    return render( request, 'housetime/contacto.html' )


def Promociones(request):
    return render( request, 'housetime/promociones.html' )


def Blog(request):
    return render( request, 'housetime/blog.html' )


def CompraDetalle(request):
    return render( request, 'housetime/anuncio_detalle.html' )


def get_housetime(request):
    cantClientes = r.objects.count()
    cantDepartamentos = a.objects.filter( id_tipo=2 ).count()
    cantCasas = a.objects.filter( id_tipo=1 ).count()
    cantPromociones = p.objects.count()

    inventario = [
        {
            'clientes': cantClientes,
            'casas': cantCasas,
            'departamentos': cantDepartamentos,
            'promociones': cantPromociones,
        }
    ]

    return render( request, 'housetime/index.html', {'inventario': inventario} )
