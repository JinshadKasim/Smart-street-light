from django.conf.urls import url

from employee import views

urlpatterns = [
    url(r'^REGEMPLOYEE/', views.REGEMPLOYEE),

]