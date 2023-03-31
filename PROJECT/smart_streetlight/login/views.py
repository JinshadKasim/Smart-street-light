from django.shortcuts import render
from login.models import Login
# Create your views
def login(request):
    if request.method == "POST":
        username = request.POST.get("Username")
        password = request.POST.get("Password")
        obj = Login.objects.filter(username=username,password=password)
        tp = ""
        for ob in obj:
            tp = ob.type
            uid = ob.u_id
            if tp == "admin":
                request.session["uid"] = uid
                return render(request, 'temp/adminhome.html')
            elif tp == "User":
                request.session["uid"]=uid
                return render(request,'temp/userhome.html')
            elif tp == "Employee":
                request.session["uid"] = uid
                return render(request, 'temp/employee_home.html')
            elif tp == "authority":
                request.session["uid"] = uid
                return render(request, 'temp/authority_home.html')
            # elif tp == "User":
            #     request.session["uid"] = uid
            #     return render(request, 'temp/userhome.html')
            else:
                msg="Incorrect username or password!!"
                context={
                    'ok':msg
                }
            return render(request, 'login/login.html',context)

    return render(request, 'login/login.html')


def userl(request):
    if request.method == "POST":
        username = request.POST.get("Username")
        password = request.POST.get("Password")
        obj = Login.objects.filter(username=username, password=password)
        tp = ""
        for ob in obj:
            tp = ob.type
            uid = ob.u_id
            if tp == "User":
                request.session["uid"] = uid
                return render(request, 'temp/userhome.html')

            else:
                msg = "Incorrect username or password!!"
                context = {
                    'ok': msg
                }
            return render(request, 'login/user login.html', context)
    return render(request,'login/user login.html')