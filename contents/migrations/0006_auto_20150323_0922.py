# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cms', '0003_auto_20140926_2347'),
        ('contents', '0005_auto_20150320_0917'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='posttranslation',
            name='page',
        ),
        migrations.AddField(
            model_name='posttranslation',
            name='pages',
            field=models.ForeignKey(related_name='posts', verbose_name='\u0421\u0442\u0440\u0430\u043d\u0438\u0446\u044b', blank=True, to='cms.Page', null=True),
            preserve_default=True,
        ),
    ]
