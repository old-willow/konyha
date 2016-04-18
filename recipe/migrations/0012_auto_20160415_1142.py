# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('recipe', '0011_auto_20160407_1102'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='recipeingredient',
            options={'ordering': ['ingredient'], 'verbose_name': 'included ingredients'},
        ),
        migrations.RemoveField(
            model_name='recipe',
            name='image',
        ),
        migrations.AddField(
            model_name='recipeimage',
            name='recipe',
            field=models.ForeignKey(default=1, to='recipe.Recipe'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='recipeingredient',
            name='unit',
            field=models.CharField(default='0', max_length=20, choices=[('0', 'Choose measure unit...'), ('gramm', 'g'), ('dekagramm', 'dkg'), ('kilogramm', 'kg'), ('tea_spun', 'Tea spun'), ('table_spun', 'Table spun'), ('quantity', 'Quantity'), ('piece', 'Piece')]),
        ),
    ]
