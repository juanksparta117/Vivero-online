from django.db import models
from django.db.models.fields import AutoField

# Create your models here.
class Planta(models.Model):
    idplanta = models.SmallAutoField(db_column='id', primary_key=True)
    nombrecomun = models.CharField(db_column='nombre_comun', max_length=30, verbose_name='Nombre común')
    tipo = models.CharField(db_column='tipo', max_length=30, verbose_name='Tipo planta')
    preciounidad = models.FloatField(db_column='precio_unidad')
    imagen = models.ImageField(db_column='imagen', upload_to='img_plantas', null=True, blank=True)
    fechaactualizacion = models.DateTimeField(db_column='fecha_actualizacion', auto_now=True)

    class Meta:
        managed = False
        db_table = 'plantas'
    
    def __str__(self):
      return self.nombrecomun