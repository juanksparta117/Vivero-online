from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate
from django.views.generic import CreateView, TemplateView
from django.contrib.auth.views import LoginView, LogoutView 
from .models import Usuario
from .forms import SignUpForm, UserRegisterForm
from django.contrib import messages
from django.contrib.auth.models import Group

# Create your views here.
def usuario(request):
    codigo = "<ul>"
    codigo += "<li>Uno</li>"
    codigo += "<li>Dos</li>"
    codigo += "<li>Tres</li>"
    codigo += "</ul>"
    parametros = {"codigo": codigo}
    return render(request, "login.html", parametros)

class SignUpView(CreateView):
    model = Usuario
    form_class = SignUpForm

    def form_valid(self, form):
        form.save()
        usuario = form.cleaned_data.get('username')
        password = form.cleaned_data.get('password1')
        usuario = authenticate(username=usuario, password=password)
        login(self.request, usuario)
        return redirect('/')

class BienvenidaView(TemplateView):
   template_name = 'bienvenida.html'

class SignInView(LoginView):
    template_name = 'iniciar_sesion.html'

class SignOutView(LogoutView):
    pass

def registro(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            user = form.save()
            group = Group.objects.get(name='cliente')
            es_viverista = form.cleaned_data.get('group')
            if es_viverista:
                group = Group.objects.get(name='viverista')
            user.groups.add(group)
            usuario = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            usuario = authenticate(username=usuario, password=password)
            login(request, usuario)
            return redirect('index')
        else:
            form = UserRegisterForm()
        context = { 'form':form }
        return render(request, "registro.html", context)
    else:
        form = UserRegisterForm()
        return render(request, "registro.html", {'form':form})