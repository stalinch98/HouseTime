# Django
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
# Views
from admins import views

urlpatterns = [
                  path( 'admin/', admin.site.urls, name="admin" ),
                  path( 'housetime/', views.get_housetime, name="housetime" ),
                  path( 'housetime/aboutus/', views.QuienesSomos, name="aboutus" ),
                  path( 'housetime/anuncios/', views.Anuncios, name="anuncios" ),
                  path( 'housetime/contacto/', views.Contacto, name="contacto" ),
                  path( 'housetime/promociones/', views.Promociones, name="promociones" ),
                  path( 'housetime/blog/', views.Blog, name="blog" ),
                  path( 'housetime/compra-detalle/', views.CompraDetalle, name="compra-detalle" ),
                  path( 'housetime/new-comment/', views.savecontact, name="nuevo-comentario" ),
                  path( 'housetime/opiniones/', views.saveopinion, name="opiniones" ),
                  path( 'housetime/cotizar/', views.savecotizacion, name="cotizar" ),
                  path( 'housetime/searchforname/', views.searchforname, name="buscar-nombre" ),
                  path( 'housetime/searchforprice/', views.searchforprice, name="buscar-precio" ),
                  path( 'housetime/searchforubication/', views.searchforubication, name="buscar-ubicacion" ),
                  path( 'housetime/searchforservices/', views.searchforservices, name="buscar-servicios" ),
                  path( 'housetime/searchforcapacity/', views.searchforcapacity, name="buscar-capacidad" ),
                  path( 'housetime/reserva/', views.reservation, name="reserva" ),
              ] + static( settings.MEDIA_URL, document_root=settings.MEDIA_ROOT )
