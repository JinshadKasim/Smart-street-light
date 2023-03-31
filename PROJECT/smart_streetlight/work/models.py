from django.db import models
from  authority.models import Authority
from employee.models import Employee
# Create your models here.


class Work(models.Model):
    w_id = models.AutoField(primary_key=True)
    # auth_id = models.IntegerField()
    auth=models.ForeignKey(Authority,to_field='a_id',on_delete=models.CASCADE)
    work = models.CharField(max_length=50)
    status = models.CharField(max_length=50)
    # e_id = models.IntegerField()
    e=models.ForeignKey(Employee,to_field='e_id',on_delete=models.CASCADE)
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'work'

