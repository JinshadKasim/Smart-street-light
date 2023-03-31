from django.shortcuts import render
from request.models import Request
import datetime

# Create your views here.

def manage_req(request):
    o = Request.objects.all()
    context = {
        'value': o,
    }

    return render(request,'request/manage_req.html',context)

def reqlight(request):
    if request.method==('POST'):
        eid=str(request.session["uid"])
        rr=Request()
        rr.request=request.POST.get('lightlocation')
        rr.date=datetime.datetime.today()
        rr.time=datetime.datetime.now().time()
        rr.u_id=eid
        rr.status='pending'
        rr.save()

    return render(request,'request/reqlight.html')

def view_lightrequest(request):
    o = Request.objects.all()
    context = {
        'value':o,
    }
    return render(request,'request/view_lightrequest.html',context)
def viewstatus_user(request):
    o =Request.objects.all()
    context = {
        'value': o,
    }

    return render(request,'request/viewreqstatus.html',context)


def accrequest (request,idd):
    o =Request.objects.get(r_id=idd)
    o.status='Accepted'
    o.save()
    return viewstatus_user(request)

def rejectrequest(request,idd):
    o =Request.objects.get(r_id=idd)
    o.status='Rejected'
    o.save()
    return viewstatus_user(request)