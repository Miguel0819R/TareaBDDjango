from django.shortcuts import render
from django.http import HttpResponse


def home(request):
    return HttpResponse("Bienvenidos, , seccion aparato electrodmesticos de bellezxas")

# Create your views here.
