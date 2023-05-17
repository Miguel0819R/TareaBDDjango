from django.urls import path
from Apps.proveedores.views import home

urlpatterns = [
    path('', home, name= 'home'),
]
