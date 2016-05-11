from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.utils import translation

from .models import Recipe, Carousel

from registration.views import RegistrationView
from registration.forms import RegistrationForm


#from konyha import settings


def home(request):
    #user_language = 'sr-latn'
    #translation.activate(user_language)
    #request.session[translation.LANGUAGE_SESSION_KEY] = user_language

    current_lang = translation.get_language()
    print current_lang
    li = translation.get_language_info(current_lang)
    print li

    images = Carousel.objects.filter(active=True)

    recipes = Recipe.objects.all()[:3]
    #rec_lead_img = recipes.recipeimage_set.get(pk=1)

    context = {
        'images': images,
        'recipes': recipes,
        'current_lang': current_lang,
        #'rec_lead_img': rec_lead_img,
    }

    #print settings.LOCALE_PATHS
    #print settings.LANGUAGE_CODE

    return render(request, 'recipe/home.html', context)


def recipe_list(request):
    recipes = Recipe.objects.all()

    context = {
        'recipes': recipes,
    }

    #print settings.LANGUAGE_CODE
    return render(request, 'recipe/index.html', context)


def recipe_detail(request, slug=''):
    #recipe = Recipe.objects.get(slug=slug)
    cur_lang = translation.get_language()
    if cur_lang == 'en-us':
        recipe = Recipe.objects.get(slug=slug)

    if cur_lang == 'hu':
        recipe = Recipe.objects.get(slug_hu=slug)

    if cur_lang == 'sr-latn':
        recipe = Recipe.objects.get(slug_sr_latn=slug)

    context = {
        'recipe': recipe,
    }
    #print settings.LANGUAGE_CODE

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
        #print("This is an empty form.")
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        #print("This is a bound form.")
        if form.is_valid():
            form.save()
            #print("Form has been saved!")

            return HttpResponseRedirect('/')

        return render(request, self.template_name, {'form': form})

#    def register(self, form):
#        if request.user.is_authenticated():
#            return HttpresponseRedirect('/')
