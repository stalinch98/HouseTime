# Django
from django.shortcuts import render, redirect
from admins.models import Reserva as r
from admins.models import Anuncios as a
from admins.models import Empresa as emp
from admins.models import Contacto as contact
from admins.models import Blog as bl
from admins.models import Imagen as im
from admins.models import Ubicacion as ub
from admins.models import Cotizar as cot


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
    anuncios = a.objects.filter( oferta=0 ).values()
    ubicaciones = ub.objects.all().values()
    imagenes = im.objects.all().values()

    return render( request, 'housetime/anuncios.html',
                   {'anuncios': anuncios, 'imagenes': imagenes, 'ubicaciones': ubicaciones} )


def Contacto(request):
    return render( request, 'housetime/contacto.html' )


def Promociones(request):
    promociones = a.objects.filter( oferta=1 ).values()
    return render( request, 'housetime/promociones.html', {'promociones': promociones} )


def Blog(request):
    descripcion = emp.objects.values( 'descripcion_blog' )
    opiniones = bl.objects.values( 'nombre_usuario', 'comentarios' ).order_by( '-id_blog' )

    for i in descripcion[0].values():
        descripcion2 = i

    blog = [
        {
            'blog': descripcion2,
        }
    ]
    return render( request, 'housetime/blog.html', {'blog': blog, 'opiniones': opiniones} )


def CompraDetalle(request):
    id = request.POST['id_anuncio']
    anuncio = a.objects.filter( id_anuncio=id ).values()
    coordenadas = ub.objects.filter( id_ubicacion=id ).values()
    imagen = im.objects.filter( id_imagen=id ).values()
    return render( request, 'housetime/anuncio_detalle.html',
                   {'anuncio': anuncio, 'coordenadas': coordenadas, 'imagen': imagen} )


def get_housetime(request):
    cantClientes = r.objects.count()
    cantDepartamentos = a.objects.filter( id_tipo=2 ).count()
    cantCasas = a.objects.filter( id_tipo=1 ).count()
    cantPromociones = a.objects.filter( oferta=True ).count()

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
        contacto = contact()

    return render( request, 'housetime/contacto.html' )


def saveopinion(request):
    blog = bl()
    if request.method == 'POST':
        blog.nombre_usuario = request.POST['nombre']
        blog.comentarios = request.POST['mensaje']
        blog.save()
        return redirect( 'housetime' )
    else:
        blog = bl()

    return render( request, 'housetime/blog.html' )


def savecotizacion(request):
    cotizar = cot()
    if request.method == 'POST':
        opciones = []
        opciones.append( request.POST.get( 'Piscina' ) )
        opciones.append( request.POST.get( 'Parqueadero' ) )
        opciones.append( request.POST.get( 'Wifi' ) )
        opciones.append( request.POST.get( 'TV-Cable' ) )
        opciones.append( request.POST.get( 'Sauna' ) )
        opciones.append( request.POST.get( 'Hidromasaje' ) )
        opciones.append( request.POST.get( 'Room-Service' ) )
        for i in opciones:
            opciones.remove( None )

        cotizar.nombre = request.POST['nombre']
        cotizar.apellido = request.POST['apellido']
        cotizar.cedula = request.POST['cedula']
        cotizar.correo = request.POST['nombre']
        cotizar.opciones = opciones
        cotizar.save()
        return redirect( 'housetime' )
    else:
        cotizar = cot()

    return render( request, 'housetime/anuncios.html' )
