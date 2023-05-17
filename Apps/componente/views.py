from django.shortcuts import render
from django.http import HttpResponse


def home(request):
    return HttpResponse("Bienvenidos, seccion componente de bellezxas")

# Create your views here.
