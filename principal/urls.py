from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index, name="index"),
    path('inventario/', views.IndexView.as_view(), name='inventario'),
    path('inventario/<int:pk>/', views.PlantaDetailView.as_view(), name='detalle_planta'),
    path('crear_planta/', views.crear_planta, name='crear_planta'),
]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)