from django import forms
from django.forms import modelformset_factory
#from django.forms import formset_factory
#from django.forms import inlineformset_factory


from .models import Recipe, RecipeIngredient


class RecipeIngredientForm(forms.ModelForm):

    class Meta:
        model = RecipeIngredient
        fields = ['ingredient', 'quantity', 'unit', ]


RecipeFormSet = modelformset_factory(Recipe,
                                     fields=('title', 'author',
                                             'slug', 'food_type',
                                             'description', 'pub_date',
                                             'modified_date', 'preparation_time',
                                             'cooking_temp', 'image',
                                             'independent_author', 'source_url', ))

#RecipeIngredientFormset = modelformset_factory(RecipeIngredient, form=RecipeIngredientForm,
#                                               fields=('ingredient', 'quantity', 'unit',))
#RecipeIngredientFormset = formset_factory(RecipeIngredientForm)
#RecipeIngredientFormset = modelformset_factory(RecipeIngredient, fields=('ingredient', 'quantity', 'unit',))
#RecipeIngredientFormset = inlineformset_factory(RecipeIngredient,
#                                                Recipe,
#                                                fields=('ingredient', 'quatity', 'unit', ))
