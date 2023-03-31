from django.shortcuts import render
from employee.models import Employee
from login.models import Login


# Create your views here.

def REGEMPLOYEE(request):
    if request.method == "POST":
        eid=str(request.session["uid"])
        ee = Employee()
        ee.name = request.POST.get('empname')
        ee.email = request.POST.get('empemail')
        ee.password = request.POST.get('emppassword')
        ee.a_id=eid

        ee.save()

        obb = Login()
        obb.username = request.POST.get('empname')
        obb.password = request.POST.get('emppassword')
        obb.type = 'Employee'
        obb.u_id = ee.e_id
        obb.save()

    return render(request,'employee/REGEMPLOYEE.html')
