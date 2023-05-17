from django.contrib import admin
from Apps.aparato_electro.models import AparatoE, AparatoProveedor

# Register your models here.

class AparatoEAdmin(admin.ModelAdmin):
    pass


admin.site.register(AparatoE, AparatoEAdmin)

class AparatoProveedorAdmin(admin.ModelAdmin):
    pass


admin.site.register(AparatoProveedor, AparatoEAdmin)