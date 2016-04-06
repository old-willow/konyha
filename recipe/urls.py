from django.conf.urls import url


urlpatterns = [
    url(r'^$', 'recipe.views.index', name='index'),
]
