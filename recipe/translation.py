from modeltranslation.translator import translator, TranslationOptions
from .models import Recipe


class RecipeTranslationOptions(TranslationOptions):
    fields = ('title', 'slug', 'food_type', 'description', 'pub_date',
              'modified_date', 'author', 'preparation_time', 'cooking_temp',
              'independent_author', 'source_url', )
    fallback_languages = {'default': ('en', 'hu', 'sr-latn')}


translator.register(Recipe, RecipeTranslationOptions)
