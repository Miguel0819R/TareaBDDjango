from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.


def home(request):
    return HttpResponse("Bienvenidos, seccion fabricante de bellezxas")

# Create your views here.
