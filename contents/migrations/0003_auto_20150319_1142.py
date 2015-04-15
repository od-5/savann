# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0002_post_type_button'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='post',
            name='main',
        ),
        migrations.AddField(
            model_name='post',
            name='main_block',
            field=models.CharField(blank=True, max_length=255, null=True, verbose_name='\u041e\u0442\u043e\u0431\u0440\u0430\u0436\u0430\u0442\u044c \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u043e\u0439', choices=[(b'first', '\u0411\u043b\u043e\u043a 1'), (b'last', '\u0411\u043b\u043e\u043a 2')]),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='post',
            name='type_button',
            field=models.CharField(default=b'link', max_length=255, verbose_name='\u0422\u0438\u043f \u043f\u043e\u0434\u0440\u043e\u0431\u043d\u043e\u0439 \u0441\u0441\u044b\u043b\u043a\u0438', choices=[(b'link-1 p5', '\u0421\u0441\u044b\u043b\u043a\u0430'), (b'button-1', '\u0417\u0435\u043b\u0435\u043d\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430'), (b'button-2', '\u041e\u0440\u0430\u043d\u0436\u0435\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430'), (b'button-3', '\u041a\u0440\u0430\u0441\u043d\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430')]),
            preserve_default=True,
        ),
    ]
