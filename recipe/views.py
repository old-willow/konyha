from django.shortcuts import render

from .models import Recipe


def recipe_list(request):
    recipes = Recipe.objects.all()

    context = {
        'recipes': recipes,
    }

    return render(request, 'recipe/index.html', context)


def recipe_detail(request, slug):
    recipe = Recipe.objects.get(slug=slug)
    for i in recipe.recipeimage_set.all():
        print i

    context = {
        'recipe': recipe,
    }

    return render(request, 'recipe/recipe-detail.html', context)
