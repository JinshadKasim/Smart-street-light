from django.conf.urls import url

from authority import views

urlpatterns = [
    url(r'^manage_authority/',views.manage_authority),
    url(r'^regauthority/',views.regauthority),
    url(r'^viewstatus_authority/',views.viewstatus_authorirty),
    url(r'^updateauthority/(?P<idd>\w+)',views.updateauthority,name="updauth"),
    url(r'^deleteauth/(?P<idd>\w+)',views.Deleteauthority,name="dlt"),


]