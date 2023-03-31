from django.conf.urls import url

from temp import views

urlpatterns = [
    url(r'^adminhome/',views.admin),
    url(r'^authority/',views.authority),
    url(r'^employee/',views.employee),
    url(r'^mainhome/',views.main),
    url(r'^userhome/',views.user),
]