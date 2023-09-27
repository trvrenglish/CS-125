from django.db import models
from django import forms

class NumberInput(models.Model):
    number = models.IntegerField()

class NumberForm(forms.ModelForm):
    # specify the name of model to use
    class Meta:
        model = NumberInput
        fields = "__all__"