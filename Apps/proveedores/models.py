from django.db import models

from django.db import models

class Proveedores(models.Model):
    nombre_proveedor = models.CharField(max_length=100)
    direccion = models.CharField(max_length=200)
    contacto = models.CharField(max_length=100)
    # Otros campos relevantes

    def __str__(self):
        return self.nombre_proveedor

    class Meta:
        verbose_name = "Proveedor"
        verbose_name_plural = "Proveedores"