from django.contrib import admin

from autenticacao.models import Perfil


@admin.register(Perfil)
class PerfilAdmin(admin.ModelAdmin):
    list_display = ('nome_completo', 'cpf', 'telefone', 'usuario')