from django.shortcuts import render

# Create your views here.
def admin(request):
    return render(request,'temp/adminhome.html')

def authority(request):
    return render(request,'temp/authority_home.html')

def employee(request):
    return render(request,'temp/employee_home.html')

def main(request):
    return render(request,'temp/mainhome.html')

def user(request):
    return render(request,'temp/userhome.html')