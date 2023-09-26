from django.http import HttpResponse
from django.template import loader
from .models import NumberInput
from .models import NumberForm

def renderPage(request):
    mynumbers = NumberInput.objects.all().order_by('-id')[:10]
    template = loader.get_template('home.html')
    context = {
        'mynumbers': mynumbers,
    }
    context['form']= NumberForm()

    if request.method == 'POST':
        number = NumberInput(number = request.POST.get('number'))
        number.save()
    return HttpResponse(template.render(context, request))