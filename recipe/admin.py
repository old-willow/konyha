from django.contrib import admin
from django.utils.html import mark_safe
from django.db import models
from django.forms import ClearableFileInput
from django.utils.translation import ugettext_lazy as _

#from mce_filebrowser.admin import MCEFilebrowserAdmin

from .models import (RecipeAuthor, RecipeImage,
                     RecipeIngredient, Recipe, Ingrediant,
                     Carousel)

from modeltranslation.admin import TranslationAdmin

#from .forms import RecipeIngredientFormset


class RecipeAuthorAdmin(admin.ModelAdmin):
    #list_display = ('show_image', )
    fromfield_overrides = {
        models.ImageField: {'widget': ClearableFileInput},
    }
    fieldsets = (
        ('User', {
            'description': mark_safe(_('<p>Please choose from registered users that belong to <strong>Chef</strong> group.</p>')),
            'fields': ('user', )
        }),
        ('User profile image', {
            #'classes': ('collapse', ),
            'description': mark_safe(_('It is <strong>mandatory</strong> to uploada profile image')),
            'fields': (('image', 'image_preview', ), ),
        }),
    )
    #fields = ('user', 'image', 'show_image', )
    #inlines = [
    #    RecipeAuthorInline,
    #]
    readonly_fields = ('image_preview', )

    #def save_form(self, request, form, change):
    #    """
    #    Palceholder function to add code for deleting image if cleared in the admin
    #    """
    #    pass


class RecipeImageInline(admin.TabularInline):
    model = RecipeImage
    extra = 1


class RecipeIngredientAdmin(admin.ModelAdmin):
    fields = ('ingredient', 'quantity', 'unit', )


class RecipeIngredientInline(admin.TabularInline):
    model = Recipe.ingredient.through
    #formset = RecipeIngredientFormset
    extra = 1


class RecipeAdmin(TranslationAdmin):
#class RecipeAdmin(admin.ModelAdmin):
#class RecipeAdmin(MCEFilebrowserAdmin):
    fields = ('title', 'author', 'slug', 'food_type', 'description', 'pub_date',
              'modified_date', 'preparation_time',
              'cooking_temp', 'independent_author', 'source_url', )

    filter_horizontal = ('ingredient', )
    #exclude = ('ingredient', )
    prepopulated_fields = {'slug': ('title', )}
    readonly_fields = ('pub_date', 'modified_date', )

    inlines = [RecipeImageInline, RecipeIngredientInline, ]


admin.site.register(RecipeAuthor, RecipeAuthorAdmin)
admin.site.register(RecipeImage)
admin.site.register(Ingrediant)
admin.site.register(RecipeIngredient, RecipeIngredientAdmin)
admin.site.register(Recipe, RecipeAdmin)
admin.site.register(Carousel)
#admin.site.register(Recipe, RecipeAdmin)
#admin.site.register(Unit)
