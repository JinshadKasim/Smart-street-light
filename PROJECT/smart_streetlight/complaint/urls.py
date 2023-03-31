from django.conf.urls import url

from complaint import views

urlpatterns=[
    url(r'^complaint/',views.complaint),
    url(r'^postreply/(?P<idd>\w+)', views.postreply,name='postreply'),
    url(r'^view_authcomplaint/', views.view_authcomplaint),
    url(r'^view_complainadmin/', views.view_complaintadmin),
    url(r'^REPLYVIEW/', views.viewreplay),
    url(r'^comforward/(?P<idd>\w+)', views.comforward,name='comforward'),

]