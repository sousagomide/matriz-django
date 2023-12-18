from django.db import models


class CampusModel(models.Model):
    nome = models.CharField('Nome', max_length=50)
    sigla = models.CharField('Sigla', max_length=15)

    def __str__(self):
        return f'{self.nome}({self.sigla})'