from django.utils.translation import get_language
from django import template
from django.core.urlresolvers import reverse
from django.core.urlresolvers import resolve
from django.utils import translation

import re
from datetime import datetime


register = template.Library()


def strip_language_url(path):
    current_lang = r'^(/%s)/' % get_language()
    match = re.search(current_lang, path)

    if match is None:
        return path

    return path[match.end(1):]


@register.simple_tag
def current_year_footer():
    return str(datetime.now().year)


class MyTransUrl(template.Node):
    def __init__(self, language):
        self.language = language

    def render(self, context):
        return self.language


@register.simple_tag
def give_my_A(language):
    return MyTransUrl(language)


class TranslatedURL(template.Node):
    def __init__(self, language):
        self.language = language

    def render(self, context):
        view = resolve(context['request'].path)
        request_language = translation.get_language()
        translation.activate(self.language)
        url = reverse(view.url_name, args=view.args, kwargs=view.kwargs)
        translation.activate(request_language)
        return url


@register.tag(name='translate_url')
def do_translate_url(parser, token):
    language = token.split_contents()[1]
    return TranslatedURL(language)


@register.simple_tag(takes_context=True)
def change_lang(context, lang=None, *args, **kwargs):

    path = context['request'].path
    #my_post = context['request'].POST
    #print '*** POST ***'
    #print my_post
    #actual_recipe = context['recipes']

    #print '*** ACTUAL RECIPE SLUG ***'
    #print actual_recipe
    #print type(actual_recipe[0])
    #translation.activate('sr-latn')
    #print actual_recipe[0].slug

    #my_context = context
    #print '*** CONTEXT ***'
    #print context

    url_parts = resolve(path)

    url = path
    cur_language = get_language()
    print context

    #print type(context)
    #if 'recipe' in context:
    ##if hasattr(context, 'recipe'):
    #    instance = context['recipe']
    #    print instance
    #else:
    #    print 'Context don\'t contain recipe instance.'

    try:
        translation.activate(lang)
        if 'recipe' in context:
            slug = context['recipe'].slug
            url = reverse(url_parts.view_name, kwargs={'slug': slug})
        else:
            url = reverse(url_parts.view_name, kwargs=url_parts.kwargs)
    finally:
        translation.activate(cur_language)

    #return my_context
    return '%s' % url

register.filter('strip_language_url', strip_language_url)
#register.('current_year_footer', current_year_footer)
