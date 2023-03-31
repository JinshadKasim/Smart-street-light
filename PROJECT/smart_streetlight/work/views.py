from django.shortcuts import render
from work.models import Work
from work.models import Work
from employee.models import Employee
import datetime

# Create your views here.

def assignwork(request):
    ob=Employee.objects.all()
    context={
        'objval':ob,
    }
    if request.method=='POST':
        aid=request.session["uid"]
        ww=Work()
        ww.auth_id=aid
        ww.work=request.POST.get('assignwork')
        ww.status="pending"
        ww.e_id=request.POST.get('employeeid')
        ww.date=datetime.datetime.today()
        ww.time=datetime.datetime.now().time()
        ww.save()
    return render(request,'work/assignwork.html',context)

def upstatus(request,idd):
    o = Work.objects.get(w_id=idd)
    context = {
        'obval': o,
    }
    if request.method == "POST":
        ob = Work.objects.get(w_id=idd)
        ob.status = request.POST.get('status')
        ob.save()
    return render(request,'work/upstatus.html',context)

def view_work(request):
    o = Work.objects.filter(status='pending')
    context = {
        'value': o,
    }
    return render(request,'work/view_work.html',context)

def viewworkstatus(request):
    o = Work.objects.all()
    context = {
        'value': o,
    }
    return render(request,'work/viewworkstatus.html',context)



