from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User
from django.utils.translation import ugettext as _

from django.utils.html import mark_safe


class RecipeAuthor(models.Model):
    user = models.ForeignKey(User, help_text="Please provide chef",
                             on_delete=models.CASCADE)
    image = models.ImageField(upload_to='images/chefs/',
                              max_length=255,
                              blank=True, null=True,
                              help_text="You have to add chef photo.")

    def image_preview(self):
        img = '<img src="/media/%s" width="120" height="120" />' % (self.image, )

        return mark_safe(img)
    image_preview.short_description = 'Image preview'

    def __unicode__(self):
        return self.user.username


class RecipeImage(models.Model):
    title = models.CharField(max_length=120)
    image = models.ImageField(upload_to='images/recipes/', max_length=255)
    #recipe = models.ForeignKey(Recipe, on_delete=models.CASCADE)

    def __unicode__(self):
        return self.title


#class Unit(models.Model):
#    MEASURING_UNITS = (
#        ('0', 'Choose measure unit...'),
#        ('gramm', 'g'),
#        ('dekagramm', 'dkg'),
#        ('kilogramm', 'kg'),
#        ('tea_spun', 'Tea spun'),
#        ('table_spun', 'Table spun'),
#        ('quantity', 'quantity'),
#        ('piece', 'piece'),
#    )
#
#    measure_unit = models.CharField(max_length=20, choices=MEASURING_UNITS, default='0')
#    #quantity = models.IntegerField()
#    #ingrediant = models.ForeignKey(Ingrediant, on_delete=models.CASCADE)
#
#    def __unicode__(self):
#        return self.get_measure_unit_display()


class Ingrediant(models.Model):
    SPICES = (
        ('0', _('Neutral')),
        ('solt', _('Solt')),
        ('sugar', _('Sugar')),
        ('bitter', _('Bitter')),
        ('acid', _('Acid')),
    )

    name = models.CharField(max_length=100)
    #recipe = models.ManyToManyField(Recipe)
    spice_type = models.CharField(max_length=30, choices=SPICES, default='0')
    #unit = models.CharField(max_length=15, choices=MEASURING_UNITS, default='0')

    def __unicode__(self):
        return self.name


class RecipeIngredient(models.Model):
    MEASURING_UNITS = (
        ('0', 'Choose measure unit...'),
        ('gramm', 'g'),
        ('dekagramm', 'dkg'),
        ('kilogramm', 'kg'),
        ('tea_spun', 'Tea spun'),
        ('table_spun', 'Table spun'),
        ('quantity', 'quantity'),
        ('piece', 'piece'),
    )
    ingredient = models.ForeignKey(Ingrediant, on_delete=models.CASCADE)
    quantity = models.CharField(max_length=15)
    #unit = models.ForeignKey(Unit, on_delete=models.CASCADE)
    unit = models.CharField(max_length=20, choices=MEASURING_UNITS, default='0')

    def __unicode__(self):
        return self.ingredient.name + ': ' + self.quantity + ' ' + self.unit

    class Meta:
        ordering = ['ingredient', ]
        verbose_name = 'included ingredient'


class Recipe(models.Model):
    FOOD_TYPE = (
        ('0', _('Choose food type...')),
        ('soup', _('Soup')),
        ('stewed_vegies', _('Stewed Vegetables')),
        ('coocked_meat', _('Coocked Meat')),
        ('baked_meat', _('Baked Meat')),
        ('solted_cake', _('Solted Cake')),
        ('sweet_cake', _('Sweet Cake')),
        ('torte', _('Torte')),
        ('salad', _('Salad')),
    )

    title = models.CharField(max_length=120)
    slug = models.SlugField()
    food_type = models.CharField(max_length=30, choices=FOOD_TYPE, default='0')
    description = models.TextField()
    pub_date = models.DateTimeField(_('Publication date'), auto_now_add=True)
    modified_date = models.DateTimeField(_('Modification date'), auto_now=True)
    author = models.ForeignKey(RecipeAuthor,
                               related_name='recipes',
                               on_delete=models.CASCADE)
    image = models.ForeignKey(RecipeImage, on_delete=models.CASCADE,
                              verbose_name=_('Recipe images'))
    preparation_time = models.CharField(max_length=20, blank=True, null=True)
    cooking_temp = models.CharField(max_length=10, blank=True, null=True)
    ingredient = models.ManyToManyField(RecipeIngredient)
    independent_author = models.CharField(max_length=120, blank=True, null=True)
    source_url = models.CharField(_('Source web site'),
                                  max_length=250, blank=True, null=True)

    def __unicode__(self):
        return self.title

    class Meta:
        ordering = ['-pub_date', 'title', ]
