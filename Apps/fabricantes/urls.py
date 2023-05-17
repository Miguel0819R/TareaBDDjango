from django.urls import path
from Apps.fabricantes.views import home

urlpatterns = [
    path('', home, name= 'home'),
]
