from django.contrib import admin
from Apps.tipo_producto.models import TipoProducto

# Register your models here.

class TipoProductoAdmin(admin.ModelAdmin):
    pass


admin.site.register(TipoProducto, TipoProductoAdmin)