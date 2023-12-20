from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy
from django.views.generic import TemplateView


class IndexView(LoginRequiredMixin, TemplateView):
    login_url = reverse_lazy('login')
    template_name = 'index.html'



class SobreView(LoginRequiredMixin, TemplateView):
    login_url = reverse_lazy('login')
    template_name = 'sobre.html'