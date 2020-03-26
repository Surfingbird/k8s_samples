from django.db import models

# Create your models here.

class Event(models.Model):
    name = models.CharField(max_length=200, primary_key=True)
    hits = models.IntegerField()
