from django.http import HttpResponse
from django.template import loader
from .models import NumberInput

def hello_world(request):
    mynumbers = NumberInput.objects.all().values()
    template = loader.get_template('home.html')
    context = {
        'mynumbers': mynumbers,
    }
    return HttpResponse(template.render(context, request))