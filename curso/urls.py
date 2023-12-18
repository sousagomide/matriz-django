from django.urls import path

from curso.views import CursoCreate, CursoDelete, CursoIndexView, CursoUpdate

urlpatterns = [
    path('', CursoIndexView.as_view(), name = 'curso-index'),
    path('create/', CursoCreate.as_view(), name = 'curso-create'),
    path('update/<int:pk>/', CursoUpdate.as_view(), name = 'curso-update'),
    path('delete/<int:pk>/', CursoDelete.as_view(), name = 'curso-delete')
]
