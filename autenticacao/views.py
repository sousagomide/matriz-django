from django.contrib.auth.models import Group
from django.shortcuts import get_object_or_404
from django.urls import reverse_lazy
from django.views.generic.edit import CreateView

from autenticacao.forms import UsuarioForm


class UsuarioCreate(CreateView):
    template_name = 'autenticacao/form.html'
    form_class = UsuarioForm
    success_url = reverse_lazy('index')

    def form_valid(self, form):
        grupo = get_object_or_404(Group, name = 'Docente')
        url = super().form_valid(form)
        self.object.groups.add(grupo)
        self.object.save()
        return url

