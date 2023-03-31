from django.conf.urls import url

from location import views

urlpatterns = [
    url(r'^reglight/', views.reglight),

]