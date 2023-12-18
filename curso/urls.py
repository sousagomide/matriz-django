from django.urls import path

from curso.views import CursoCreate, CursoIndexView

urlpatterns = [
    path('', CursoIndexView.as_view(), name='curso-index'),
    path('create/', CursoCreate.as_view(), name='curso-create')
]
