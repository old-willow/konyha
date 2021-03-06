# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-04-07 08:20
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import filebrowser.fields
import tinymce.models


class Migration(migrations.Migration):

    dependencies = [
        ('recipe', '0008_auto_20160331_1005'),
    ]

    operations = [
        migrations.AlterField(
            model_name='recipe',
            name='author',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='recipes', to='recipe.RecipeAuthor'),
        ),
        migrations.AlterField(
            model_name='recipe',
            name='description',
            field=tinymce.models.HTMLField(verbose_name='description'),
        ),
        migrations.AlterField(
            model_name='recipeimage',
            name='image',
            field=filebrowser.fields.FileBrowseField(max_length=200, verbose_name='Image'),
        ),
    ]
