# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import savann.utils


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0006_auto_20150323_0922'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='image',
            field=models.ImageField(help_text='\u0414\u043b\u044f \u043e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u0432 \u0441\u043f\u0438\u0441\u043a\u0435 \u0436\u0438\u0432\u043e\u0442\u043d\u044b\u0445', upload_to=savann.utils.get_file_path, null=True, verbose_name='\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435', blank=True),
            preserve_default=True,
        ),
    ]
