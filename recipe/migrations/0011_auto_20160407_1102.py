# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-04-07 11:02
from __future__ import unicode_literals

from django.db import migrations
import filebrowser.fields


class Migration(migrations.Migration):

    dependencies = [
        ('recipe', '0010_auto_20160407_0824'),
    ]

    operations = [
        migrations.AlterField(
            model_name='recipeimage',
            name='image',
            field=filebrowser.fields.FileBrowseField(max_length=200, verbose_name='Image'),
        ),
    ]
