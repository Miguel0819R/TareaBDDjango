from django.urls import path
from Apps.componente.views import ComponenteList, ComponenteDetail


app_name = "componentes"
urlpatterns = [
    path('', ComponenteList.as_view()),
    path('<int:pk>', ComponenteDetail.as_view())
]