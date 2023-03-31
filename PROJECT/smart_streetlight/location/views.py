from django.shortcuts import render
from location.models import Location
import datetime

# Create your views here.

def reglight(request):
    if request.method=="POST":
        eid= str(request.session["uid"])
        dd = Location()
        dd.auth_id=eid
        dd.date=datetime.datetime.today()
        dd.longitude=request.POST.get('Longitude')
        dd.location=request.POST.get('location')
        dd.latitude=request.POST.get('Latitude')
        dd.save()


    return render(request,'location/reglight.html')
