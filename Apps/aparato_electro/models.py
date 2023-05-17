from django.db import models
from Apps.proveedores.models import Proveedores

# Create your models here.
class AparatoE(models.Model):
    descripcion = models.CharField(max_length=100, help_text="Ingrese la descripcion")
    aparatomasProveedor = models.ManyToManyField(Proveedores, through='AparatoProveedor', verbose_name="AparatoProveedor")

    def __str__(self):
        return self.descripcion

    class Meta:
        verbose_name = "AparatoElectronico"
        verbose_name_plural = "AparatosElectronicos"

class AparatoProveedor (models.Model):
    proveedores = models.ForeignKey(Proveedores, on_delete=models.CASCADE)
    aparatoe = models.ForeignKey(AparatoE, on_delete=models.CASCADE)
