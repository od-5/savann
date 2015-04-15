# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0007_post_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='cat',
            field=models.BooleanField(default=False, help_text='\u041e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430\u0445 \u0441 \u0448\u0430\u0431\u043b\u043e\u043d\u043e\u043c "\u041f\u0438\u0442\u043e\u043c\u043d\u0438\u043a"', verbose_name='\u041a\u043e\u0448\u043a\u0430'),
            preserve_default=True,
        ),
    ]
