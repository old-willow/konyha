# -*- coding: utf-8 -*-
from django.utils import translation


class TranslateURL(object):
    def process_request(self, request):
        current_lang = translation.get_language()
        current_url = request.path
        #request_lang = translation.get_language_from_request(request,
        #                                                     check_path=self.is_language_prefix_patterns_used)

        #print "Current language: " + current_lang + "\n" + "Current url: " + current_url + "\n" + "Requested language: " + request_lang
        print "Current language: " + current_lang + "\n" + "Current url: " + current_url + "\n"
