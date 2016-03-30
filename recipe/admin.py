from django.contrib import admin
from django.utils.html import mark_safe
from django.db import models
from django.forms import ClearableFileInput

from recipe.models import RecipeAuthor, RecipeImage, Recipe, Ingrediant, Unit


class RecipeAuthorAdmin(admin.ModelAdmin):
    #list_display = ('show_image', )
    fromfield_overrides = {
        models.ImageField: {'widget': ClearableFileInput},
    }
    fieldsets = (
        ('User', {
            'description': mark_safe('<p>Please choose from registered users that belong to <strong>Chef</strong> group.</p>'),
            'fields': ('user', )
        }),
        ('User profile image', {
            #'classes': ('collapse', ),
            'description': mark_safe('It is <strong>mandatory</strong> to uploada profile image'),
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


#class RecipeImageInline(admin.TabularInline):
#    model = RecipeImage
#    extra = 1


#class RecipeAdmin(admin.ModelAdmin):
#    pass
#    inlines = [
#        RecipeImageInline,
#    ]


admin.site.register(RecipeAuthor, RecipeAuthorAdmin)
admin.site.register(RecipeImage)
admin.site.register(Recipe)
#admin.site.register(Recipe, RecipeAdmin)
admin.site.register(Ingrediant)
admin.site.register(Unit)
