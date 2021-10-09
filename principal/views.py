from django.shortcuts import render
from django.http.response import HttpResponse
from django.shortcuts import render, redirect, get_object_or_404
from .models import *
from .forms import CrearPlantaForm
from django.views.generic import ListView, DetailView 

# Create your views here.
def index(request):
    codigo = "<ul>"
    codigo += "<li>Uno</li>"
    codigo += "<li>Dos</li>"
    codigo += "<li>Tres</li>"
    codigo += "</ul>"
    parametros = {"codigo": codigo}
    return render(request, "index.html", parametros)

class IndexView(ListView):
    template_name = "lista_plantas.html"
    context_object_name = 'listado_plantas'
    def get_queryset(self):
        return Planta.objects.all()

class PlantaDetailView(DetailView):
    model = Planta
    template_name = "detalle_planta.html"

def crear_planta(request):
    if request.method == 'POST':
        form = CrearPlantaForm(request.POST or None, request.FILES or None)
        if form.is_valid():
            form.save()
            return redirect('index')
        else:
            form = CrearPlantaForm()
    else:
        form = CrearPlantaForm()
        return render(request, 'crear_planta.html', {'form':form})