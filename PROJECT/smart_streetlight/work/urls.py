from django.conf.urls import url

from work import views

urlpatterns = [

    url(r'^assignwork/', views.assignwork),
    url(r'^upstatus/(?P<idd>\w+)', views.upstatus,name='upstatus'),
    url(r'^view_work/', views.view_work),
    url(r'^viewworkstatus/', views.viewworkstatus),
   #url(r'^')

]