# Django
from django.shortcuts import render
from admins.models import Reserva,Anuncios,Promocion

def HouseTime(request):
    cantClientes = Reserva.objects.count()
    cantCasas = Anuncios.objects.filter(id_tipo=1).count()
    cantDepartamentos = Anuncios.objects.filter(id_tipo=2).count()
    cantPromociones = Promocion.objects.count()

    inventario = [
        {
            'clientes':  Reserva.objects.count(),
            'casas': cantCasas,
            'departamentos': cantDepartamentos,
            'promociones': cantPromociones,
        }
    ]

    return render(request, 'housetime/index.html', {'inventario': inventario})