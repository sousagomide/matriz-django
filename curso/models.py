from django.db import models


class Curso(models.Model):
    TIPO_CHOICES = (
        ('Ensino Integrado', 'INTEGRADO'),
        ('Ensino Superior', 'SUPERIOR')
    )
    PERIODO_CHOICES = (
        ('Matutino', 'MATUTINO'),
        ('Vespertino', 'VESPERTINO'),
        ('Noturno', 'NOTURNO'),
        ('Integral', 'INTEGRAL'),
    )
    nome = models.CharField('Nome', max_length = 100)
    tipo = models.CharField('Tipo', max_length = 30, choices = TIPO_CHOICES)
    periodo = models.CharField('Período', max_length = 45, choices = PERIODO_CHOICES)
    campus = models.ForeignKey('campus.Campus', verbose_name = 'Campus', on_delete = models.CASCADE)

    def __str__(self):
        return f'{self.nome} - {self.campus.sigla}'