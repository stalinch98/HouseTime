# Django
from django.shortcuts import render


def HouseTime(request):

    return render(request, 'housetime/index.html')