from django.contrib import admin

from curso.models import Curso


@admin.register(Curso)
class CursoAdmin(admin.ModelAdmin):
    list_display = ('nome', 'tipo', 'periodo', 'campus')

