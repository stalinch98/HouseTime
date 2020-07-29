"""Administracion de la base de datos."""

# Django
from django.contrib import admin

# Models
from admins.models import Blog, Empresa, Cotizar, Imagen, SubImagenes, Tipo, Ubicacion, Anuncios, Promocion, Reserva, Contacto

# Registrar modelo en el panel de administracion
admin.site.register(Blog)
admin.site.register(Empresa)
admin.site.register(Cotizar)
admin.site.register(Imagen)
admin.site.register(SubImagenes)
admin.site.register(Tipo)
admin.site.register(Ubicacion)
admin.site.register(Anuncios)
admin.site.register(Promocion)
admin.site.register(Reserva)
admin.site.register(Contacto)