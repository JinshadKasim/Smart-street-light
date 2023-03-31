from django.db import models
from user.models import User

# Create your models here.


class Request(models.Model):
    r_id = models.AutoField(primary_key=True)
    # u_id = models.IntegerField()
    u = models.ForeignKey(User, to_field='u_id', on_delete=models.CASCADE)
    request = models.CharField(max_length=100)
    location = models.CharField(max_length=50)
    time = models.TimeField()
    date = models.DateField()
    status = models.CharField(db_column='Status', max_length=50)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'request'
