from django.db import models

# Create your models here.


class Location(models.Model):
    l_id = models.AutoField(primary_key=True)
    date = models.DateField()
    longitude = models.CharField(max_length=50)
    location = models.CharField(max_length=50)
    latitude = models.CharField(max_length=50)
    auth_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'location'
