from django.urls import path
from Apps.componente.views import home

urlpatterns = [
    path('', home, name= 'home'),
]
