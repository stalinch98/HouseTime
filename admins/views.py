# Django
from django.shortcuts import render, redirect
from admins.models import Reserva as r, Anuncios as a, Promocion as p, Empresa as emp, Contacto as contact

def QuienesSomos(request):
    mision = emp.objects.values( 'mision' )
    vision = emp.objects.values( 'vision' )

    for i in mision[0].values():
        mision2 = i

    for i in vision[0].values():
        vision2 = i

    datos = [
        {
            'mision': mision2,
            'vision': vision2
        }
    ]

    return render( request, 'housetime/quienes_somos.html', {'datos': datos} )


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


def savecontact(request):
    contacto = contact()
    if request.method == 'POST':
        contacto.nombre_usuario = request.POST['nombre']
        contacto.celular = request.POST['telefono']
        contacto.email = request.POST['email']
        contacto.mensaje = request.POST['mensaje']
        contacto.save()
        return redirect( 'housetime' )
    else:
        form = contact()

    return render( request, 'housetime/contacto.html' )
