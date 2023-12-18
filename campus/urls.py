from django.urls import path

from campus.views import CampusIndexView

urlpatterns = [
    path('', CampusIndexView.as_view(), name='campus-index')
]
