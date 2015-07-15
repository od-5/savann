# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cms_plugins', '0011_auto_20150415_1355'),
    ]

    operations = [
        migrations.AddField(
            model_name='logomodelplugin',
            name='html',
            field=models.TextField(null=True, verbose_name='HTML', blank=True),
            preserve_default=True,
        ),
    ]
