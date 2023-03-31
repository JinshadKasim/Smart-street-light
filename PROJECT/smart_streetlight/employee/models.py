from django.db import models

# Create your models here.


class Employee(models.Model):
    e_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    a_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'employee'
