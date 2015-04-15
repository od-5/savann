# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import redactor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('cms', '0003_auto_20140926_2347'),
        ('cms_plugins', '0003_auto_20150318_1022'),
    ]

    operations = [
        migrations.CreateModel(
            name='LogoModelPlugin',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='cms.CMSPlugin')),
                ('name', models.CharField(max_length=255, null=True, verbose_name='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a', blank=True)),
                ('href', models.CharField(max_length=255, null=True, verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430', blank=True)),
                ('text', redactor.fields.RedactorField(null=True, verbose_name='\u0422\u0435\u043a\u0441\u0442', blank=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
    ]
