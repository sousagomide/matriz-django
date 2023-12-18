from django.urls import path

from campus.views import (CampusCreate, CampusDelete, CampusIndexView,
                          CampusUpdate)

urlpatterns = [
    path('', CampusIndexView.as_view(), name = 'campus-index'),
    path('create/', CampusCreate.as_view(), name = 'campus-create'),
    path('update/<int:pk>/', CampusUpdate.as_view(), name = 'campus-update'),
    path('delete/<int:pk>/', CampusDelete.as_view(), name = 'campus-delete')
]
