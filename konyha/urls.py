"""konyha URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.conf.urls.static import static
from django.contrib import admin
from django.conf import settings
from django.contrib import flatpages
from django.conf.urls.i18n import i18n_patterns
from django.utils.translation import ugettext_lazy as _

from filebrowser.sites import site

from recipe import views as recipe_views


#urlpatterns = [
#    url(r'^(?P<filename>(robots.txt)|(humans.txt))$', home_files, name='home-files'),
#]

urlpatterns = [
    url(r'^i18n/', include('django.conf.urls.i18n')),

    url(r'^$', recipe_views.home),
    url(_(r'^accounts/logout/$'), 'django.contrib.auth.views.logout', {'next_page': '/'}),
    url(_(r'^accounts/'), include('registration.backends.simple.urls')),
    #url(r'^accounts/register/$', recipe_views.Registration.as_view()),  # test purpose
    #url(r'^accounts/login/$', 'django.contrib.auth.views.login'),
    #url(r'^accounts/logout/$', 'django.contrib.auth.views.logout', {'next_page': '/'}),
    #url(r'^accounts/', include('registration.backends.simple.urls')),
    url(r'^admin/filebrowser/', site.urls),
    url(r'^grappelli/', include('grappelli.urls')),
    url(r'^tinymce/', include('tinymce.urls')),

    url(_(r'^recipes/'), include('recipe.urls', namespace='recipe')),

    url(r'^admin/', admin.site.urls),

    url(r'^pages/', include('django.contrib.flatpages.urls')),
    url(_(r'^about/$'), flatpages.views.flatpage, {'url': '/about/'}, name='about'),
]

#urlpatterns += i18n_patterns(
#    url(_(r'^recipes/'), include('recipe.urls', namespace='recipe')),
#    url(_(r'^about/$'), flatpages.views.flatpage, {'url': '/about/'}, name='about'),
#)

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
