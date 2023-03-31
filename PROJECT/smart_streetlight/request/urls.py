from django.conf.urls import url

from request import views

urlpatterns = [
    url(r'^manage_req/', views.manage_req),
    url(r'^reqlight/', views.reqlight),
    url(r'^view_lightrequest/', views.view_lightrequest),
    url(r'^viewreqstatus/', views.viewstatus_user),
    url(r'^accrequest/(?P<idd>\w+)', views.accrequest, name='accrequest'),
    url(r'^rejectrequest/(?P<idd>\w+)', views.rejectrequest, name='rejectrequest'),


]