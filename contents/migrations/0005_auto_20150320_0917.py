# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0004_post_menu'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='post',
            name='slug',
        ),
        migrations.AddField(
            model_name='posttranslation',
            name='slug',
            field=models.SlugField(null=True, max_length=255, blank=True, help_text='\u0417\u0430\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438', unique=True, verbose_name='\u0423\u043d\u0438\u043a\u0430\u043b\u044c\u043d\u044b\u0439 URL'),
            preserve_default=True,
        ),
    ]
