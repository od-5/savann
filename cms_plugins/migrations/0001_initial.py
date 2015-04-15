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
            name='Block',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435')),
                ('html', models.TextField(verbose_name='\u041a\u043e\u0434')),
            ],
            options={
                'verbose_name': '\u0411\u043b\u043e\u043a',
                'verbose_name_plural': '\u0411\u043b\u043e\u043a\u0438',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='BlockPlugin',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='cms.CMSPlugin')),
                ('block', models.ForeignKey(related_name='plugins', verbose_name='\u0411\u043b\u043e\u043a', to='cms_plugins.Block')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
        migrations.CreateModel(
            name='HtmlInsertModel',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='cms.CMSPlugin')),
                ('name', models.CharField(max_length=255, null=True, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435', blank=True)),
                ('html', models.TextField(verbose_name='\u041a\u043e\u0434')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
        migrations.CreateModel(
            name='Keyword',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('text', models.TextField(verbose_name='Keywords')),
                ('page', models.ForeignKey(related_name='keywords', verbose_name='\u0421\u0442\u0440\u0430\u043d\u0438\u0446\u0430', to='cms.Page')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Robot',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255, verbose_name='\u041d\u0430\u0438\u043c\u0435\u043d\u043e\u0432\u0430\u043d\u0438\u0435')),
                ('content', models.TextField(max_length=255, verbose_name='\u0421\u043e\u0434\u0435\u0440\u0436\u0438\u043c\u043e\u0435')),
                ('sort', models.IntegerField(default=0, verbose_name='\u041f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442')),
            ],
            options={
                'ordering': ['sort'],
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='TextModelPlugin',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='cms.CMSPlugin')),
                ('class_block', models.CharField(max_length=255, null=True, verbose_name='\u041a\u043b\u0430\u0441\u0441', blank=True)),
                ('name', models.CharField(max_length=255, null=True, verbose_name='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a', blank=True)),
                ('h', models.CharField(blank=True, max_length=255, null=True, verbose_name='\u0422\u0438\u043f \u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043a\u0430', choices=[(b'1', b'H1'), (b'2', b'H2'), (b'3', b'H3'), (b'4', b'H4'), (b'5', b'H5'), (b'6', b'H6')])),
                ('text', redactor.fields.RedactorField(null=True, verbose_name='\u0422\u0435\u043a\u0441\u0442', blank=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
    ]
