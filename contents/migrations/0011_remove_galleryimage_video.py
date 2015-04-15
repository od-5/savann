# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0010_galleryimage_gallery'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='galleryimage',
            name='video',
        ),
    ]
