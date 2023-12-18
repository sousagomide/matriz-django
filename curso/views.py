from django.views.generic import TemplateView


class CursoIndexView(TemplateView):
    template_name = 'curso/index.html'