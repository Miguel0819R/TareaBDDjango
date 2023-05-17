from django.db import models
from Apps.aparato_electro.models import AparatoE

class Componente(models.Model):
    aparatoE = models.ForeignKey(AparatoE, on_delete=models.CASCADE)
    especificacion = models.CharField(help_text= "Ingrese especificacion", max_length=100)
    nombre = models.CharField(help_text= "Ingrese nombre", max_length=36)

    def __str__(self):
        return self.nombre

    class Meta:
        verbose_name = "Componente"
        verbose_name_plural = "Componentes"