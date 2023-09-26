from django.http import HttpResponse
from django.template import loader
from .models import NumberInput
from .models import NumberForm
from django import forms

def renderPage(request):
    mynumbers = NumberInput.objects.all().values()
    template = loader.get_template('home.html')
    context = {
        'mynumbers': mynumbers,
    }
    context['form']= NumberForm()
    return HttpResponse(template.render(context, request))