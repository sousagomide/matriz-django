from django.contrib import admin

from campus.models import Campus


@admin.register(Campus)
class CampusAdmin(admin.ModelAdmin):
    list_display = ('nome', 'sigla')


