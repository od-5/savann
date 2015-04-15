# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contents', '0009_gallery_galleryimage'),
    ]

    operations = [
        migrations.AddField(
            model_name='galleryimage',
            name='gallery',
            field=models.ForeignKey(related_name='images', default=None, to='contents.Gallery'),
            preserve_default=False,
        ),
    ]
