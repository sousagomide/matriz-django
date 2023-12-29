import uuid

from django.contrib.auth.models import User
from django.db import models


def get_file_path(_instance, filename):
    ext = filename.split('.')[-1]
    filename = f'{uuid.uuid4()}.{ext}'
    return filename

class Campus(models.Model):
    nome = models.CharField('Nome', max_length=50)
    sigla = models.CharField('Sigla', max_length=15)
    arquivo = models.FileField(upload_to=get_file_path, null=True)
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)


    class Meta:
        ordering = ['nome']
        #db_table = 'campus'

    def __str__(self):
        return f'{self.nome} ({self.sigla})'