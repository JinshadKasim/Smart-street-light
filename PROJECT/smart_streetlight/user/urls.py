from django.conf.urls import url

from user import views

urlpatterns = [
    url(r'^reguser/', views.reguser),

     # url(r'^viewstatus_user/', views.viewstatus_user),

]