# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0003_auto_20150319_1142'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='menu',
            field=models.BooleanField(default=True, verbose_name='\u041e\u0442\u043e\u0431\u0440\u0430\u0436\u0430\u0442\u044c \u0432 \u043c\u0435\u043d\u044e'),
            preserve_default=True,
        ),
    ]
