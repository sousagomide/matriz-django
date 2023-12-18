from django.views.generic import TemplateView


class CampusIndexView(TemplateView):

    template_name = 'campus/index.html'