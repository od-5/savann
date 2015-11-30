# vim:fileencoding=utf-8
from django.http import HttpResponse
from contents.forms import FeedForm
from contents.models import Post
# from django.shortcuts import render_to_response
from django.views.generic import View, TemplateView
from savann.utils import JSONResponseMixin, allowed_action
from models import Robot
from django.contrib.sites.models import get_current_site
from savann.settings import STATIC_URL, DEFAULT_FROM_EMAIL, DEFAULT_TO_EMAIL
from django.template import Context, loader
from django.core.mail import EmailMessage


def robots(request):
    ctx = {'robots': Robot.objects.all()}
    # return render_to_response('plugins/robots.txt', ctx, mimetype="text/plain")
    # return render_to_response('plugins/robots.txt', ctx)
    return HttpResponse(loader.render_to_string('plugins/robots.txt', ctx), content_type="text/plain")


class AjaxMethods(JSONResponseMixin, View):

    @allowed_action
    def feed_back(self, data):
        form = FeedForm(data)
        if form.is_valid():
            f = form.save()
            context = {'form': f, 'site': get_current_site(self.request), 'static': STATIC_URL}
            context = Context(context)
            temp = loader.get_template("mail/new-feedback.html")
            html = (temp.render(context)).encode('utf-8')
            msg = EmailMessage(u'Обратная связь', html, DEFAULT_FROM_EMAIL, DEFAULT_TO_EMAIL, headers={})
            msg.content_subtype = "html"
            msg.send()
            return {'success': True}
        return {'success': False}


class FrontView(TemplateView):
    template_name = 'base.html'

    def get_context_data(self, **kwargs):
        posts = Post.objects.language().filter(active=True)
        ctx = {'posts_big': posts.filter(main_block='big'),
               'posts_1': posts.filter(main_block='first'),
               'posts_2': posts.filter(main_block="last")}
        return ctx



