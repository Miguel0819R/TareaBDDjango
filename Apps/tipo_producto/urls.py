from django.urls import path
from Apps.tipo_producto.views import home

urlpatterns = [
    path('', home, name= 'home'),
]
