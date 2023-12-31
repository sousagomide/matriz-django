# Projeto Matriz

Este projeto tem como finalidade a implementação de um sistema que permitirá gerenciar a criação de matrizes curriculares.

# Tecnologias usadas

<ul>
    <li>Python</li>
    <li>Django</li>
    <li>Postgresql</li>
</ul>

# Modelagem

<center>
    <img src="https://github.com/sousagomide/matriz-django/blob/main/database/model_img.png" alt="Modelagem do Banco de Dados"/>
</center>

# Bibliotecas

<ul>
    <li>django</li>
    <li>whitenoise</li>
    <li>django-bootstrap-v5</li>
    <li>django-crispy-forms</li>
    <li>django-braces</li>
    <li>crispy-bootstrap5</li>
    <li>django-stdimage</li>
    <li>psycopg2.binary</li>
    <li>django-cleanup</li>
</ul>

# Bibliotecas JS

<ul>
    <li>jquery</li>
    <li>jquery mask</li>
</ul>

# Comandos

<table>
    <thead>
        <tr>
            <td>Etapas</td>
            <td>Comandos</td>
            <td>Descrição</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>python -m venv venv</td>
            <td>Criação do ambiente de desenvolvimento</td>
        </tr>
        <tr>
            <td>2</td>
            <td>pip install django whitenoise django-bootstrap-v5 django-stdimage psycopg2.binary django-crispy-forms crispy-bootstrap5 django-cleanup</td>
            <td>Instalação das bibliotecas</td>
        </tr>
        <tr>
            <td>3</td>
            <td>django-admin startproject matriz .</td>
            <td>Criação do projeto</td>
        </tr>
        <tr>
            <td>4</td>
            <td>Veja a seguir em <a href="https://github.com/sousagomide/matriz-django#settingspy">settings.py</a></td>
            <td>Configuração do settings.py do projeto</td>
        </tr>
        <tr>
            <td>5</td>
            <td>python manage.py makemigrations</td>
            <td>Criar as migrações</td>
        </tr>
        <tr>
            <td>6</td>
            <td>python manage.py migrate</td>
            <td>Executar as migrações</td>
        </tr>
        <tr>
            <td>7</td>
            <td>django-admin startapp home</td>
            <td>Criar os módulos: autenticacao, home, campus, curso, nucleo</td>
        </tr>
    </tbody>
</table>

# settings.py

<pre>
    import os
    ALLOWED_HOSTS = ['*']
    INSTALLED_APPS = [
        'stdimage',
        'bootstrap5',
        'crispy_forms',
        'crispy_bootstrap5',
        'django_cleanup.apps.CleanupConfig'
    ]
    CRISPY_ALLOWED_TEMPLATE_PACKS = 'bootstrap5'
    CRISPY_TEMPLATE_PACK = 'bootstrap5'
    'DIRS': ['templates'],
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.postgresql',
            'NAME': 'matriz',
            'USER': 'postgres',
            'PASSWORD': 'postgres',
            'HOST': 'localhost',
            'PORT': '5433' # ou porta 5432
        }
    }
    LANGUAGE_CODE = 'pt-br'
    TIME_ZONE = 'America/Sao_Paulo'
    STATICFILES_DIRS = [
        os.path.join(BASE_DIR, 'static')
    ]
    MEDIA_URL = 'media/'
    MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
    LOGIN_REDIRECT_URL = 'index'
    LOGOUT_REDIRECT_URL = 'login'
    LOGIN_URL = 'login'
</pre>
