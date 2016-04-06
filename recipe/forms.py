from django import forms
from django.forms import modelformset_factory
#from django.forms import modelformset_factory
#from django.forms import formset_factory

from .models import RecipeIngredient


class RecipeIngredientForm(forms.ModelForm):

    class Meta:
        model = RecipeIngredient
        fields = ['ingredient', 'quantity', 'unit', ]

#RecipeIngredientFormset = modelformset_factory(RecipeIngredient, form=RecipeIngredientForm,
#                                               fields=('ingredient', 'quantity', 'unit',))
#RecipeIngredientFormset = formset_factory(RecipeIngredientForm)
RecipeIngredientFormset = modelformset_factory(RecipeIngredient, fields=('ingredient', 'quantity', 'unit',))
