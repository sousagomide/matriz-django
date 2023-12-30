from django.contrib.auth.models import User
from django.db import models


class Perfil(models.Model):
    nome_completo = models.CharField(max_length=255, null=True)
    cpf = models.CharField(max_length=14, null=True)
    telefone = models.CharField(max_length=16, null=True)
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)

    class Meta:
        ordering=['nome_completo']
        db_table='perfil'
    
    def __str__(self):
        return f'{self.nome_completo}'
