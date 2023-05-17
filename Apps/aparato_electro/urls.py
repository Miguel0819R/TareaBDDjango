from django.urls import path
from Apps.aparato_electro.views import home

urlpatterns = [
    path('', home, name= 'home'),
]