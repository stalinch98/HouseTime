# Django
from django.contrib import admin
from django.urls import path

# Views
from admins import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('housetime/', views.HouseTime),
]
