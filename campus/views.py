from django.urls import reverse_lazy
from django.views.generic import (CreateView, DeleteView, TemplateView,
                                  UpdateView)

from campus.models import Campus


class CampusIndexView(TemplateView):
    template_name = 'campus/index.html'


class CampusCreate(CreateView):
    model = Campus
    fields = ['nome', 'sigla']
    template_name = 'campus/form.html'
    success_url = reverse_lazy('campus-index')