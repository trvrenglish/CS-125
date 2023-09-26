from django.db import models

class NumberInput(models.Model):
  number = models.CharField(max_length=255)