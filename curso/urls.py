from django.urls import path

from curso.views import CursoIndexView

urlpatterns = [
    path('', CursoIndexView.as_view(), name='curso-index')
]
