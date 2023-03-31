from django.db import models

# Create your models here.



class Authority(models.Model):
    a_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50)
    location = models.CharField(max_length=50)
    contact_no = models.CharField(max_length=30)
    email = models.CharField(max_length=50)
    status = models.CharField(max_length=100)
    password = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'authority'


