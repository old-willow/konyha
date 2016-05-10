from django.conf.urls import url
from django.utils.translation import ugettext_lazy as _

from . import views

urlpatterns = [
    url(_(r'^$'), views.recipe_list, name='list'),
    url(_(r'(?P<slug>[-\w\d]+)/$'), views.recipe_detail, name='detail'),
]
