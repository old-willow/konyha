# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import filebrowser.fields


class Migration(migrations.Migration):

    dependencies = [
        ('recipe', '0012_auto_20160415_1142'),
    ]

    operations = [
        migrations.CreateModel(
            name='Carousel',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=100)),
                ('active', models.BooleanField()),
                ('image', filebrowser.fields.FileBrowseField(max_length=200, verbose_name='Image')),
            ],
        ),
    ]
