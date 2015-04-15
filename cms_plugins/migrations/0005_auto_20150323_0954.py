# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cms_plugins', '0004_logomodelplugin'),
    ]

    operations = [
        migrations.AlterField(
            model_name='logomodelplugin',
            name='text',
            field=models.TextField(null=True, verbose_name='\u0422\u0435\u043a\u0441\u0442', blank=True),
            preserve_default=True,
        ),
    ]
