from django.shortcuts import render

from .models import Recipe, Carousel


def home(request):
    images = Carousel.objects.filter(active=True)
    first_image = images[0]

    context = {
        'images': images,
        'first_image': first_image,
    }

    return render(request, 'recipe/home.html', context)


def recipe_list(request):
    recipes = Recipe.objects.all()

    context = {
        'recipes': recipes,
    }

    return render(request, 'recipe/index.html', context)


def recipe_detail(request, slug):
    recipe = Recipe.objects.get(slug=slug)

    context = {
        'recipe': recipe,
    }

    return render(request, 'recipe/recipe-detail.html', context)


def carousel(request):
    images = Carousel.objects.filter(active=True)

    context = {'images': images}

    return render(request,
                  'recipe/carousel.html',
                  context)
