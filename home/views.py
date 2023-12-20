from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy
from django.views.generic import TemplateView


class IndexView(LoginRequiredMixin, TemplateView):
    login_url = reverse_lazy('login')
    template_name = 'index.html'

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(*args, **kwargs)
        context['titulo'] = 'Bem-vindo ao Sistema de Gerenciamento Matricial!'
        context['usuario_nome'] = f'{self.request.user.first_name} {self.request.user.last_name}'
        context['to_html'] = f'<font color="#ff0000">Para HTML</font>'
        return context



class SobreView(LoginRequiredMixin, TemplateView):
    login_url = reverse_lazy('login')
    template_name = 'sobre.html'