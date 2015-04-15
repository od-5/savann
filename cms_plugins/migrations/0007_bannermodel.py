# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import savann.utils


class Migration(migrations.Migration):

    dependencies = [
        ('cms', '0003_auto_20140926_2347'),
        ('cms_plugins', '0006_catsmodel'),
    ]

    operations = [
        migrations.CreateModel(
            name='BannerModel',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='cms.CMSPlugin')),
                ('file', models.FileField(help_text=b'.jpg, .jpeg, .swf .png', upload_to=savann.utils.get_file_path, verbose_name='\u0424\u0430\u0439\u043b')),
                ('blank', models.BooleanField(default=False, verbose_name='\u041e\u0442\u043a\u0440\u044b\u0432\u0430\u0442\u044c \u0432 \u043d\u043e\u0432\u043e\u043c \u043e\u043a\u043d\u0435')),
                ('url', models.CharField(max_length=255, verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430')),
                ('width', models.CharField(max_length=255, null=True, verbose_name='\u0428\u0438\u0440\u0438\u043d\u0430', blank=True)),
                ('height', models.CharField(max_length=255, null=True, verbose_name='\u0412\u044b\u0441\u043e\u0442\u0430', blank=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
    ]
