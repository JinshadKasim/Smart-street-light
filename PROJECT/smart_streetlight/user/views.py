from django.shortcuts import render
from user.models import User
from login.models import Login
from request.models import Request


# Create your views here.

def reguser(request):
    if request.method=="POST":
        uu = User()
        uu.username = request.POST.get('username')
        uu.address = request.POST.get('useraddress')
        uu.email = request.POST.get('usermail')
        uu.contact_no = request.POST.get('usernumber')
        uu.password = request.POST.get('userpassword')

        uu.save()

        obb=Login()
        obb.username = request.POST.get('username')
        obb.password = request.POST.get('userpassword')
        obb.type = 'User'
        obb.u_id =uu.u_id
        obb.save()


    return render(request,'user/reguser.html')

















