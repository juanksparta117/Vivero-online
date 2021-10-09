from django.db import models
from django.db.models.signals import post_save
from django.contrib.auth.models import User
from django.dispatch import receiver

# Create your models here.
class Usuario(models.Model):
    pass

class Cliente(models.Model):
    cedula = models.IntegerField(primary_key=True, verbose_name='Cédula')
    user = models.CharField(max_length=20, verbose_name='Nombre de usuario')
    nombres = models.CharField(max_length=25, verbose_name='Nombres')
    apellidos = models.CharField(max_length=25, verbose_name='Apellidos')
    correo = models.CharField(max_length=25, verbose_name='Email')
    nro_celular = models.CharField(max_length=12, verbose_name='Celular')
    fechareg = models.DateTimeField(verbose_name='Fecha de registro')

    class Meta:
        managed = False
        db_table = 'clientes'

    def __str__(self): 
        return self.nombres+' '+self.apellidos