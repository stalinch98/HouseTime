# Django
from django.contrib import admin
from django.urls import path

# Views
from admins import views

urlpatterns = [
    path('admin/', admin.site.urls, name="admin"),
    path('housetime/', views.housetime, name="housetime"),
    path('housetime/aboutus/', views.QuienesSomos, name="aboutus"),
    #path('housetime/anuncios/', views.Anuncios, name="anuncios"),
    #path('housetime/contacto/', views.Contacto, name="contacto"),
    #path('housetime/promociones/', views.Promociones, name="promociones"),
    #path('housetime/blog/', views.Blog, name="blog"),
    #path('housetime/compra-detalle/', views.CompraDetalle, name="compra-detalle"),
]
