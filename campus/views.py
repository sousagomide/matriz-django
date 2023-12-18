from django.urls import reverse_lazy
from django.views.generic import (CreateView, DeleteView, TemplateView,
                                  UpdateView)
from django.views.generic.list import ListView

from campus.models import Campus


class CampusIndexView(ListView):
    model = Campus
    template_name = 'campus/index.html'


class CampusCreate(CreateView):
    model = Campus
    fields = ['nome', 'sigla']
    template_name = 'campus/form.html'
    success_url = reverse_lazy('campus-index')

class CampusUpdate(UpdateView):
    model = Campus
    fields = ['nome', 'sigla']
    template_name = 'campus/form.html'
    success_url = reverse_lazy('campus-index')

class CampusDelete(DeleteView):
    model = Campus
    template_name = 'campus/form-excluir.html'
    success_url = reverse_lazy('campus-index')