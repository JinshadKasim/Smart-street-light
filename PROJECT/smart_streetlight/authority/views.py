from django.shortcuts import render
from authority.models import Authority
from login.models import Login
from django.http import HttpResponse
# Create your views here.

def manage_authority(request):
    o =Authority.objects.filter(status="authority")
    context = {
        'value': o,
    }
    return render(request,'authority/manage_authority.html',context)




def regauthority(request):
    if request.method=="POST":
        obj=Authority()
        obj.username=request.POST.get('name')
        obj.location=request.POST.get('loc')
        obj.contact_no=request.POST.get('phone')
        obj.email=request.POST.get('email')
        obj.password=request.POST.get('pass')
        obj.status="authority"
        obj.save()

        ob=Login()
        ob.username=request.POST.get('name')
        ob.password=request.POST.get('pass')
        ob.type="authority"
        ob.u_id=obj.a_id
        ob.save()


    return render(request,'authority/regauthority.html')



def viewstatus_authorirty(request):
    y = Authority.objects.all()
    context = {
        'value': y,
    }
    return render(request,'authority/viewstatus_authorirty.html',context)

def updateauthority(request,idd):
    if request.method=="POST":
        zz=Authority.objects.filter(auth_id=idd)
        context={
            'ok':zz
        }
        zz.username = request.POST.get('authorityname')
        zz.location = request.POST.get('location')
        zz.contact_no = request.POST.get('authoritynumber')
        zz.email = request.POST.get('authorityemail')
        zz.status = "authority"
        zz.password=request.POST.get('authoritypassword')
        zz.save()

        return render(request,'authority/updateauthority.html',context)


    return render(request,'authority/updateauthority.html')

def Deleteauthority(request,idd):
    obj=Authority.objects.get(a_id=idd)
    obj.delete()
    ob=Login.objects.get(u_id=idd,type="authority")
    ob.delete()
    return manage_authority(request)