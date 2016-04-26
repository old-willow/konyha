# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import tinymce.models


class Migration(migrations.Migration):

    dependencies = [
        ('recipe', '0014_auto_20160424_1811'),
    ]

    operations = [
        migrations.AddField(
            model_name='recipe',
            name='author_en_us',
            field=models.ForeignKey(related_name='recipes', to='recipe.RecipeAuthor', null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='author_hu',
            field=models.ForeignKey(related_name='recipes', to='recipe.RecipeAuthor', null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='author_sr_latn',
            field=models.ForeignKey(related_name='recipes', to='recipe.RecipeAuthor', null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='cooking_temp_en_us',
            field=models.CharField(max_length=10, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='cooking_temp_hu',
            field=models.CharField(max_length=10, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='cooking_temp_sr_latn',
            field=models.CharField(max_length=10, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='description_en_us',
            field=tinymce.models.HTMLField(null=True, verbose_name='description'),
        ),
        migrations.AddField(
            model_name='recipe',
            name='description_hu',
            field=tinymce.models.HTMLField(null=True, verbose_name='description'),
        ),
        migrations.AddField(
            model_name='recipe',
            name='description_sr_latn',
            field=tinymce.models.HTMLField(null=True, verbose_name='description'),
        ),
        migrations.AddField(
            model_name='recipe',
            name='food_type_en_us',
            field=models.CharField(default='0', max_length=30, null=True, choices=[('0', 'Choose food type...'), ('soup', 'Soup'), ('stewed_vegies', 'Stewed Vegetables'), ('coocked_meat', 'Coocked Meat'), ('baked_meat', 'Baked Meat'), ('solted_cake', 'Solted Cake'), ('sweet_cake', 'Sweet Cake'), ('torte', 'Torte'), ('salad', 'Salad')]),
        ),
        migrations.AddField(
            model_name='recipe',
            name='food_type_hu',
            field=models.CharField(default='0', max_length=30, null=True, choices=[('0', 'Choose food type...'), ('soup', 'Soup'), ('stewed_vegies', 'Stewed Vegetables'), ('coocked_meat', 'Coocked Meat'), ('baked_meat', 'Baked Meat'), ('solted_cake', 'Solted Cake'), ('sweet_cake', 'Sweet Cake'), ('torte', 'Torte'), ('salad', 'Salad')]),
        ),
        migrations.AddField(
            model_name='recipe',
            name='food_type_sr_latn',
            field=models.CharField(default='0', max_length=30, null=True, choices=[('0', 'Choose food type...'), ('soup', 'Soup'), ('stewed_vegies', 'Stewed Vegetables'), ('coocked_meat', 'Coocked Meat'), ('baked_meat', 'Baked Meat'), ('solted_cake', 'Solted Cake'), ('sweet_cake', 'Sweet Cake'), ('torte', 'Torte'), ('salad', 'Salad')]),
        ),
        migrations.AddField(
            model_name='recipe',
            name='independent_author_en_us',
            field=models.CharField(max_length=120, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='independent_author_hu',
            field=models.CharField(max_length=120, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='independent_author_sr_latn',
            field=models.CharField(max_length=120, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='modified_date_en_us',
            field=models.DateTimeField(auto_now=True, verbose_name='Modification date', null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='modified_date_hu',
            field=models.DateTimeField(auto_now=True, verbose_name='Modification date', null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='modified_date_sr_latn',
            field=models.DateTimeField(auto_now=True, verbose_name='Modification date', null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='preparation_time_en_us',
            field=models.CharField(max_length=20, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='preparation_time_hu',
            field=models.CharField(max_length=20, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='preparation_time_sr_latn',
            field=models.CharField(max_length=20, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='pub_date_en_us',
            field=models.DateTimeField(auto_now_add=True, verbose_name='Publication date', null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='pub_date_hu',
            field=models.DateTimeField(auto_now_add=True, verbose_name='Publication date', null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='pub_date_sr_latn',
            field=models.DateTimeField(auto_now_add=True, verbose_name='Publication date', null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='slug_en_us',
            field=models.SlugField(null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='slug_hu',
            field=models.SlugField(null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='slug_sr_latn',
            field=models.SlugField(null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='source_url_en_us',
            field=models.CharField(max_length=250, null=True, verbose_name='Source web site', blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='source_url_hu',
            field=models.CharField(max_length=250, null=True, verbose_name='Source web site', blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='source_url_sr_latn',
            field=models.CharField(max_length=250, null=True, verbose_name='Source web site', blank=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='title_en_us',
            field=models.CharField(max_length=120, null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='title_hu',
            field=models.CharField(max_length=120, null=True),
        ),
        migrations.AddField(
            model_name='recipe',
            name='title_sr_latn',
            field=models.CharField(max_length=120, null=True),
        ),
    ]
