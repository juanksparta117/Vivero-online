from django import forms
from django.db.models import fields
from django.forms import widgets
from .models import Planta

class PlantasForm(forms.ModelForm):
    class Meta:
        model = Planta
        fields = "__all__"

class CrearPlantaForm(forms.ModelForm):    
    nombrecomun = forms.CharField(label='Nombre común', required=True)
    tipo = forms.CharField(label='Tipo de planta')
    preciounidad = forms.CharField(label='Precio')
    imagen = forms.ImageField(label='Imagen')

    class Meta:
        model = Planta
        fields = (
            'nombrecomun',
            'tipo',
            'preciounidad',
            'imagen',
        )
    def clean(self):
        print(self.cleaned_data)

        return self.cleaned_data