from django.contrib.auth import views as auth_views
from django.urls import path

from autenticacao.views import UsuarioCreate

urlpatterns = [
    path('', auth_views.LoginView.as_view(
        template_name='autenticacao/login.html'
    ), name='login'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
    path('newuser/', UsuarioCreate.as_view(), name='register-user')

]