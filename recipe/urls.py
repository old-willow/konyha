from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.recipe_list, name='list'),
    url(r'(?P<slug>[-\w\d]+)/$', views.recipe_detail, name='detail'),
]
