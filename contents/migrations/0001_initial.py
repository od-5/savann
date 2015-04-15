# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import redactor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('cms', '0003_auto_20140926_2347'),
    ]

    operations = [
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('date', models.DateTimeField(verbose_name='\u0414\u0430\u0442\u0430 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u044f')),
                ('main', models.BooleanField(default=False, verbose_name='\u041e\u0442\u043e\u0431\u0440\u0430\u0436\u0430\u0442\u044c \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u043e\u0439')),
                ('slug', models.SlugField(null=True, max_length=255, blank=True, help_text='\u0417\u0430\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438', unique=True, verbose_name='\u0423\u043d\u0438\u043a\u0430\u043b\u044c\u043d\u044b\u0439 URL')),
            ],
            options={
                'ordering': ['-date'],
                'verbose_name': '\u041f\u0443\u0431\u043b\u0438\u043a\u0430\u0446\u0438\u044f',
                'verbose_name_plural': '\u041f\u0443\u0431\u043b\u0438\u043a\u0430\u0446\u0438\u0438',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='PostTranslation',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435')),
                ('url', models.CharField(max_length=255, null=True, verbose_name='\u041f\u0440\u043e\u0438\u0437\u0432\u043e\u043b\u044c\u043d\u0430\u044f \u0441\u0441\u044b\u043b\u043a\u0430', blank=True)),
                ('short', redactor.fields.RedactorField(null=True, verbose_name='\u041a\u0440\u0430\u0442\u043a\u043e\u0435 \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435', blank=True)),
                ('description', redactor.fields.RedactorField(null=True, verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435', blank=True)),
                ('active', models.BooleanField(default=False, verbose_name='\u041e\u043f\u0443\u0431\u043b\u0438\u043a\u043e\u0432\u0430\u043d\u043e')),
                ('meta_title', models.CharField(max_length=255, null=True, verbose_name='\u0422\u0430\u0439\u0442\u043b', blank=True)),
                ('meta_keywords', models.CharField(max_length=255, null=True, verbose_name='Keywords', blank=True)),
                ('meta_description', models.TextField(max_length=255, null=True, verbose_name='Description', blank=True)),
                ('language_code', models.CharField(max_length=15, db_index=True)),
                ('master', models.ForeignKey(related_name='translations', editable=False, to='contents.Post', null=True)),
                ('page', models.ManyToManyField(related_name='posts', null=True, verbose_name='\u0421\u0442\u0440\u0430\u043d\u0438\u0446\u044b', to='cms.Page', blank=True)),
            ],
            options={
                'db_table': 'contents_post_translation',
            },
            bases=(models.Model,),
        ),
        migrations.AlterUniqueTogether(
            name='posttranslation',
            unique_together=set([('language_code', 'master')]),
        ),
    ]
