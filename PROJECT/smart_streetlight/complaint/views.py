from django.shortcuts import render
from complaint.models import Complaint
import datetime

# Create your views here.

def complaint(request):

    if request.method=="POST":
        eid=str(request.session["uid"])

        cc=Complaint()
        cc.u_id=eid
        cc.date=datetime.datetime.today()
        cc.complaint=request.POST.get('complaint')
        cc.reply="pending"
        cc.status="pending"
        cc.save()




    return render(request,'complaint/complaint.html')

def postreply(request,idd):
    o=Complaint.objects.get(c_id=idd)
    context={
        'obval':o,
    }
    if request.method=="POST":
        ob=Complaint.objects.get(c_id=idd)
        ob.reply=request.POST.get('postreply')
        ob.save()
        return view_authcomplaint(request)
    return render(request,'complaint/postreply.html',context)

def view_authcomplaint(request,):
    o=Complaint.objects.filter(status="forward")
    context={
        'value':o,
    }
    return render(request,'complaint/view_authcomplaint.html',context)

def view_complaintadmin(request):
    y=Complaint.objects.filter(status="pending")
    context={
        'value':y,
    }
    return render(request,'complaint/view_complaintadmin.html',context)

def viewreplay(request):
    eid=str(request.session["uid"])
    z=Complaint.objects.filter(u=eid)
    context={
        'value':z,
    }
    return render(request, 'complaint/reply view.html', context)


def comforward(request,idd):
    o=Complaint.objects.get(c_id=idd)
    o.status='forward'
    o.save()
    return view_complaintadmin(request)
