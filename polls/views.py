from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from .models import Event


def index(request):
    try:
        e = Event.objects.get(name='hit')
    except Event.DoesNotExist:
        e = None

    if e is None:
        e = Event(name='hit', hits=1)
        e.save()
    else:
        e.hits += 1
        e.save()

    return HttpResponse(f'Hits count = {e.hits}')
