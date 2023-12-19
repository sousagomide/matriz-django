from django.db import models


class Nucleo(models.Model):
    nome = models.CharField('Núcleo', max_length=50)

    class Meta:
        ordering=['nome']
        db_table='nucleo'
    
    def __str__(self):
        return f'{self.nome}'
