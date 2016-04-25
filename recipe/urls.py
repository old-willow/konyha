from django.conf.urls import url
from django.conf.urls.i18n import i18n_patterns

from . import views

urlpatterns = [
    url(r'^$', views.recipe_list, name='list'),
    url(r'(?P<slug>[-\w\d]+)/$', views.recipe_detail, name='detail'),
]
