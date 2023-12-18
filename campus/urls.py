from django.urls import path

from campus.views import CampusCreate, CampusIndexView

urlpatterns = [
    path('', CampusIndexView.as_view(), name='campus-index'),
    path('create/', CampusCreate.as_view(), name='campus-create')
]
