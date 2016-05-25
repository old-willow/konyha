# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('recipe', '0015_auto_20160426_1153'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='recipe',
            options={'ordering': ['-pub_date', 'title'], 'verbose_name': 'recipe', 'verbose_name_plural': 'recipes'},
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='author_en_us',
            new_name='author_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='cooking_temp_en_us',
            new_name='cooking_temp_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='description_en_us',
            new_name='description_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='food_type_en_us',
            new_name='food_type_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='independent_author_en_us',
            new_name='independent_author_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='modified_date_en_us',
            new_name='modified_date_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='preparation_time_en_us',
            new_name='preparation_time_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='pub_date_en_us',
            new_name='pub_date_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='slug_en_us',
            new_name='slug_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='source_url_en_us',
            new_name='source_url_en',
        ),
        migrations.RenameField(
            model_name='recipe',
            old_name='title_en_us',
            new_name='title_en',
        ),
    ]
