from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy
from django.views.generic import (CreateView, DeleteView, TemplateView,
                                  UpdateView)
from django.views.generic.list import ListView

from campus.models import Campus


class CampusIndexView(LoginRequiredMixin, ListView):
    login_url = reverse_lazy('login')
    model = Campus
    template_name = 'campus/index.html'


class CampusCreate(LoginRequiredMixin, CreateView):
    login_url = reverse_lazy('login')
    model = Campus
    fields = ['nome', 'sigla']
    template_name = 'campus/form.html'
    success_url = reverse_lazy('campus-index')

class CampusUpdate(LoginRequiredMixin, UpdateView):
    login_url = reverse_lazy('login')
    model = Campus
    fields = ['nome', 'sigla']
    template_name = 'campus/form.html'
    success_url = reverse_lazy('campus-index')

class CampusDelete(LoginRequiredMixin, DeleteView):
    login_url = reverse_lazy('login')
    model = Campus
    template_name = 'campus/form-excluir.html'
    success_url = reverse_lazy('campus-index')