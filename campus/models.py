from django.contrib.auth.models import User
from django.db import models


class Campus(models.Model):
    nome = models.CharField('Nome', max_length=50)
    sigla = models.CharField('Sigla', max_length=15)
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)

    class Meta:
        ordering = ['nome']
        #db_table = 'campus'

    def __str__(self):
        return f'{self.nome} ({self.sigla})'