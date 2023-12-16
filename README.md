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
    <li>django-bootstrap4</li>
    <li>django-stdimage</li>
    <li>psycopg2.binary</li>
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
            <td>pip install django whitenoise django-bootstrap4 django-stdimage psycopg2.binary</td>
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
    </tbody>
</table>

# settings.py

<p>
import os<br/>
ALLOWED_HOSTS = ['*']<br/>
'DIRS': ['templates'],<br/>
DATABASES = {<br/>
    'default': {<br/>
        'ENGINE': 'django.db.backends.postgresql',<br/>
        'NAME': 'matriz',<br/>
        'USER': 'postgres',<br/>
        'PASSWORD': 'postgres',<br/>
        'HOST': 'localhost',<br/>
        'PORT': '5433' # ou porta 5432<br/>
    }<br/>
}<br/>
LANGUAGE_CODE = 'pt-br'<br/>
TIME_ZONE = 'America/Sao_Paulo'<br/>
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')<br/>
MEDIA_URL = 'media/'<br/>
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
</p>
