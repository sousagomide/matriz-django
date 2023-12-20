from braces.views import GroupRequiredMixin
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import get_object_or_404
from django.urls import reverse_lazy
from django.views.generic import (CreateView, DeleteView, TemplateView,
                                  UpdateView)
from django.views.generic.list import ListView

from campus.models import Campus


class CampusIndexView(LoginRequiredMixin, ListView):
    login_url = reverse_lazy('login')
    model = Campus
    template_name = 'campus/index.html'

    def get_queryset(self):
        self.object_list = Campus.objects.filter(usuario = self.request.user)
        return self.object_list


class CampusCreate(GroupRequiredMixin, LoginRequiredMixin, CreateView):
    login_url = reverse_lazy('login')
    group_required = u'Administrador'
    # group_required = [u'Administrador', u'Docente']
    model = Campus
    fields = ['nome', 'sigla']
    template_name = 'campus/form.html'
    success_url = reverse_lazy('campus-index')

    def form_valid(self, form):
        form.instance.usuario = self.request.user
        url = super().form_valid(form)
        #self.object.nome += 'CARAI'
        self.object.save()
        return url

class CampusUpdate(GroupRequiredMixin, LoginRequiredMixin, UpdateView):
    login_url = reverse_lazy('login')
    group_required = u'Administrador'
    model = Campus
    fields = ['nome', 'sigla']
    template_name = 'campus/form.html'
    success_url = reverse_lazy('campus-index')

    def get_object(self, queryset=None):
        self.object = get_object_or_404(Campus, pk=self.kwargs['pk'], usuario=self.request.user)
        return self.object


class CampusDelete(GroupRequiredMixin, LoginRequiredMixin, DeleteView):
    login_url = reverse_lazy('login')
    group_required = u'Administrador'
    model = Campus
    template_name = 'campus/form-excluir.html'
    success_url = reverse_lazy('campus-index')

    def get_object(self, queryset=None):
        self.object = get_object_or_404(Campus, pk=self.kwargs['pk'], usuario=self.request.user)
        return self.object