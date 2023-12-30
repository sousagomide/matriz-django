from typing import Any

from django.contrib.auth.models import Group
from django.shortcuts import get_object_or_404
from django.urls import reverse_lazy
from django.views.generic.edit import CreateView, UpdateView

from autenticacao.forms import UsuarioForm
from autenticacao.models import Perfil


class UsuarioCreate(CreateView):
    template_name = 'autenticacao/form.html'
    form_class = UsuarioForm
    success_url = reverse_lazy('index')

    def form_valid(self, form):
        grupo = get_object_or_404(Group, name = 'Docente')
        url = super().form_valid(form)
        self.object.groups.add(grupo)
        self.object.save()
        Perfil.objects.create(usuario=self.object)
        return url

class PerfilUpdate(UpdateView):
    template_name = 'autenticacao/perfil.html'
    model = Perfil
    fields = ['nome_completo', 'cpf', 'telefone']
    success_url = reverse_lazy('index')

    def get_object(self, queryset=None):
        self.object = get_object_or_404(Perfil, usuario=self.request.user)
        return self.object
    
    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(*args, **kwargs)
        context['titulo'] = 'Meus dados pessoais'
        context['botao'] = 'Atualizar'
        return context