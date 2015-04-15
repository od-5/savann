# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import redactor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('cms', '0003_auto_20140926_2347'),
        ('cms_plugins', '0009_auto_20150415_1231'),
    ]

    operations = [
        migrations.CreateModel(
            name='ContactModel',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='cms.CMSPlugin')),
                ('name', models.CharField(max_length=255, verbose_name='')),
                ('name_form', models.CharField(max_length=255, verbose_name='')),
                ('map', models.CharField(help_text=b'iframe', max_length=255, verbose_name='')),
                ('contact_info', redactor.fields.RedactorField(verbose_name='')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
    ]
