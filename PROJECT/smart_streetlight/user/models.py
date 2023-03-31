from django.db import models

# Create your models here.


class User(models.Model):
    u_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    contact_no = models.IntegerField()
    gender = models.CharField(max_length=10)
    address = models.CharField(max_length=50)
    password = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'user'
