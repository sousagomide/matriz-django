from django.urls import reverse_lazy
from django.views.generic import (CreateView, DeleteView, TemplateView,
                                  UpdateView)

from curso.models import Curso


class CursoIndexView(TemplateView):
    template_name = 'curso/index.html'


class CursoCreate(CreateView):
    model = Curso
    fields = ['nome', 'tipo', 'periodo', 'campus']
    template_name = 'curso/form.html'
    success_url = reverse_lazy('curso-index')

class CursoUpdate(UpdateView):
    model = Curso
    fields = ['nome', 'tipo', 'periodo', 'campus']
    template_name = 'curso/form.html'
    success_url = reverse_lazy('curso-index')

class CursoDelete(DeleteView):
    model = Curso
    template_name = 'curso/form-excluir.html'
    success_url = reverse_lazy('curso-index')