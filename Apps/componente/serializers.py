from dataclasses import field
from statistics import mode
from rest_framework import serializers
from Apps.componente.models import Componente

class ComponenteSerializer(serializers.ModelSerializer):
    # len_nombreCliente = serializers.SerializerMethodField()
    class Meta:
        model = Componente
        fields = "__all__"