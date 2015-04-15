# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='type_button',
            field=models.CharField(default=b'link', max_length=255, verbose_name='\u0422\u0438\u043f \u043f\u043e\u0434\u0440\u043e\u0431\u043d\u043e\u0439 \u0441\u0441\u044b\u043b\u043a\u0438', choices=[(b'link', '\u0421\u0441\u044b\u043b\u043a\u0430'), (b'button-1', '\u0417\u0435\u043b\u0435\u043d\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430'), (b'button-2', '\u041e\u0440\u0430\u043d\u0436\u0435\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430'), (b'button-3', '\u041a\u0440\u0430\u0441\u043d\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430')]),
            preserve_default=True,
        ),
    ]
