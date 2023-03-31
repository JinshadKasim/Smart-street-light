"""smart_streetlight URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url,include
from login import views

urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'^authority/',include('authority.urls')),
    url(r'^complaint/',include('complaint.urls')),
    url(r'^employee/',include('employee.urls')),
    url(r'^location/',include('location.urls')),
    url(r'^login/',include('login.urls')),
    url(r'^request/',include('request.urls')),
    url(r'^user/',include('user.urls')),
    url(r'^work/',include('work.urls')),
    url(r'^temp/',include('temp.urls')),
    url('$',views.login),

]
