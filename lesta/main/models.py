from django.db import models

class Users(models.Model):
    name = models.CharField(max_length=200, verbose_name='имя')
    family = models.CharField(max_length=200, verbose_name='фамилия')
    email = models.CharField(max_length=200, verbose_name='емаил')
    img = models.FileField(upload_to="upl/", default=None, verbose_name='Фото')
    status = models.CharField(max_length=200, verbose_name='статус')
    password = models.CharField(max_length=200, verbose_name='пароль')
    date = models.DateTimeField(auto_now_add=True, verbose_name='Дата создания')
    editdate = models.DateTimeField(auto_now=True, verbose_name='Дата изменения')
