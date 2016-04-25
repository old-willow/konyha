# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('recipe', '0013_carousel'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ingrediant',
            name='spice_type',
            field=models.CharField(default='neutral', max_length=30, choices=[('neutral', 'Neutral'), ('solty', 'Solty'), ('sweet', 'Sweet'), ('bitter', 'Bitter'), ('acid', 'Acid')]),
        ),
    ]
