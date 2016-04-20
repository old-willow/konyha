from django.shortcuts import render
from django.http import HttpResponseRedirect

from .models import Recipe, Carousel

from registration.views import RegistrationView
from registration.forms import RegistrationForm


def home(request):
    images = Carousel.objects.filter(active=True)

    context = {
        'images': images,
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


def login(request):
    pass


class Registration(RegistrationView):
    """
    This is currently only for test purposes.
    """
    form_class = RegistrationForm
    template_name = 'registration/registration_form.html'

    def get(self, request, *args, **kwargs):
        form = self.form_class()
        print("This is an empty form.")
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        print("This is a bound form.")
        if form.is_valid():
            form.save()
            print("Form has been saved!")

            return HttpResponseRedirect('/')

        return render(request, self.template_name, {'form': form})

#    def register(self, form):
#        if request.user.is_authenticated():
#            return HttpresponseRedirect('/')
