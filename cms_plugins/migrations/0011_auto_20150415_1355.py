# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import redactor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('cms_plugins', '0010_contactmodel'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contactmodel',
            name='contact_info',
            field=redactor.fields.RedactorField(verbose_name='\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u044b'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='contactmodel',
            name='map',
            field=models.TextField(help_text=b'iframe', verbose_name='\u041a\u043e\u0434 \u043a\u0430\u0440\u0442\u044b'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='contactmodel',
            name='name',
            field=models.CharField(max_length=255, verbose_name='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='contactmodel',
            name='name_form',
            field=models.CharField(max_length=255, verbose_name='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a \u0444\u043e\u0440\u043c\u044b'),
            preserve_default=True,
        ),
    ]
