"""
Django settings for konyha project.

Generated by 'django-admin startproject' using Django 1.9.4.

For more information on this file, see
https://docs.djangoproject.com/en/1.9/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.9/ref/settings/
"""

from django.utils.translation import ugettext_lazy as _

import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.9/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'q=2s^luwp1tdozpo+%+gb_+*aj2nw%i@w9t8-4#say3)b@+fi@'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['www.konyha.eld.', 'konyha.eld', ]


# Application definition

INSTALLED_APPS = [
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.sites',
    'django.contrib.flatpages',
    'grappelli',
    'filebrowser',
    'django.contrib.admin',
    'django_colorbox',
    'tinymce',
    #'mce_filebrowser',
    'recipe',
]

SITE_ID = 1

MIDDLEWARE_CLASSES = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'django.contrib.flatpages.middleware.FlatpageFallbackMiddleware',
]

ROOT_URLCONF = 'konyha.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates'), ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'django.template.context_processors.i18n',
            ],
        },
    },
]

WSGI_APPLICATION = 'konyha.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.9/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}


# Password validation
# https://docs.djangoproject.com/en/1.9/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Registration setup for django-registration package
REGISTRATION_OPEN = True

# Internationalization
# https://docs.djangoproject.com/en/1.9/topics/i18n/

LANGUAGE_CODE = 'en-us'

#TIME_ZONE = 'UTC'
TIME_ZONE = 'Europe/Belgrade'

USE_I18N = True

USE_L10N = True

USE_TZ = True

LANGUAGES = (
    ('en-us', _('English')),
    ('hu', _('Hungarian')),
    ('sr-latn', _('Serbian')),
)

LOCALE_PATHS = (
    os.path.join(BASE_DIR, 'locale'),
    os.path.join(BASE_DIR, 'recipe', 'locale'),
)

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.9/howto/static-files/

STATIC_URL = '/static/'

if not DEBUG:
    STATIC_ROOT = os.path.join(BASE_DIR, 'static')
elif DEBUG:
    STATICFILES_DIRS = (
        os.path.join(BASE_DIR, 'static'),
        os.path.join(BASE_DIR, 'static/bootstrap-3.3.6-dist'),
    )
MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

#Filebrowser settings.
from django.conf import settings
FILEBROWSER_DIRECTORY = getattr(settings, 'FILEBROWSER_DIRECTORY', 'images/recipes/')
#FILEBROWSER_EXTENSIONS = getattr(settings, 'FILEBROWER_EXTENSIONS', {
#    'Image': ['.jpg', '.jpeg', '.gif', '.png', '.tif', ]
#})
#SELECT_FORMATS = getattr(settings, "FILEBROWSER_SELECT_FORMATS", {
#    'file': ['Image'],
#    'image': ['Image'],
#})

TINYMCE_DEFAULT_CONFIG = {
    'plugins': "table,spellchecker,paste,searchreplace",
    'height': 500,
    'width': 800,
    'theme': "advanced",
    'cleanup_on_startup': True,
    'custom_undo_redo_levels': 10,
}

FILEBROWSER_VERSIONS = getattr(settings, "FILEBROWSER_VERSIONS", {
    'admin_thumbnail': {'verbose_name': 'Admin Thumbnail', 'width': 60, 'height': 60, 'opts': 'crop'},
    'thumbnail': {'verbose_name': 'Thumbnail (2 col)', 'width': 180, 'height': 100, 'opts': 'crop'},
    'small': {'verbose_name': 'Small (2 col)', 'width': 140, 'height': '', 'opts': ''},
    'medium': {'verbose_name': 'Medium (4col )', 'width': 300, 'height': '166', 'opts': 'crop'},
    'big': {'verbose_name': 'Big (6 col)', 'width': 460, 'height': '', 'opts': ''},
    'large': {'verbose_name': 'Large (8 col)', 'width': 680, 'height': '', 'opts': ''},
})
# Tinymce settings.
#TINYMCE_JS_URL = 'http://127.0.0.1:8000/tiny_mce/tiny_mce_src.js'
#TINYMCE_JS_ROOT = os.path.join(MEDIA_URL, '/home/robi/venv/py2_django_19_4_midearth.eld/lib/python2.7/site-packages/tinymce/media/')
#TINYMCE_DEFAULT_CONFIG = {'selector': 'textarea',
#                          'height': 500,
#                          'width': 800,
#                          'theme': 'advanced',
#                          'cleanup_on_startup': True,
#                          'custom_undo_redo_levels': 10,
#                          'plugins': "image",
#                          'file_browser_callback': 'filebrowser',
#                          'file_browser_callback': 'mce_filebrowser',
#                          'plugins':  [
#                              'advlist autolink lists link image charmap print preview anchor',
#                              'searchreplace visualblocks code fullscreen',
#                              'insertdatetime media table contextmenu paste code',
#                              'emoticons template paste textcolor colorpicker textpattern imagetools'
#                          ],
#                          'toolbar1': 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
#                          'toolbar2': 'print preview media | forecolor backcolor emoticons',
#                          'image_advtab': True,
#                          }
#TINYMCE_SPELLCHECKER = True
#TINYMCE_COMPRESSOR = True
#TINYMCE_FILEBROWSER = True  # Add 'filebrowser' to INSTALLED_APPS
