# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0008_post_cat'),
        ('cms', '0003_auto_20140926_2347'),
        ('cms_plugins', '0005_auto_20150323_0954'),
    ]

    operations = [
        migrations.CreateModel(
            name='CatsModel',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='cms.CMSPlugin')),
                ('name', models.CharField(max_length=255, verbose_name='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a')),
                ('auto', models.BooleanField(default=False, verbose_name='\u0412\u044b\u0431\u0438\u0440\u0430\u0442\u044c \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438')),
                ('cats', models.ManyToManyField(help_text='\u0415\u0441\u043b\u0438 \u043d\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u043e "\u0412\u044b\u0431\u0438\u0440\u0430\u0442\u044c \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438"', to='contents.Post', null=True, verbose_name='\u0412\u044b\u0431\u043e\u0440 \u0436\u0438\u0432\u043e\u0442\u043d\u044b\u0445', blank=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
    ]
