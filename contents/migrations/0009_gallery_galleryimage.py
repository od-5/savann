# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import savann.utils
import redactor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0008_post_cat'),
    ]

    operations = [
        migrations.CreateModel(
            name='Gallery',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435')),
            ],
            options={
                'verbose_name': '\u0413\u0430\u043b\u0435\u0440\u0435\u044f',
                'verbose_name_plural': '\u0413\u0430\u043b\u0435\u0440\u0435\u0438',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='GalleryImage',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435')),
                ('image', models.ImageField(upload_to=savann.utils.get_file_path, null=True, verbose_name='\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435', blank=True)),
                ('video', models.CharField(max_length=255, null=True, verbose_name='\u041a\u043e\u0434 \u0432\u0438\u0434\u0435\u043e', blank=True)),
                ('description', redactor.fields.RedactorField(null=True, verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435', blank=True)),
            ],
            options={
                'verbose_name': '\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435',
                'verbose_name_plural': '\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f',
            },
            bases=(models.Model,),
        ),
    ]
