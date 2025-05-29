from django.http import HttpResponseNotFound, HttpResponse, JsonResponse
from django.shortcuts import render, redirect, get_object_or_404
from pyexpat.errors import messages


def index(request):
    return render(request, 'index.html')