# coding=utf-8
import uuid
import os
import settings
import json
from django.core.serializers.json import DjangoJSONEncoder
from django.http import HttpResponseBadRequest, HttpResponse
from slugify import slugify


def get_file_path(instance, filename):
    ext = filename.split('.')[-1]
    if getattr(instance, 'name', False):
        filename = "%s.%s" % (slugify(instance.name), ext)
    elif getattr(instance, 'page', False):
        filename = "%s.%s" % (slugify(instance.page.get_title()), ext)
    elif getattr(instance, 'gallery', False):
        filename = "%s.%s" % (slugify(instance.gallery.name), ext)
    else:
        filename = "%s.%s" % (uuid.uuid4(), ext)
    return os.path.join(getattr(settings, 'IMAGE_UPLOAD_TO', 'catalog/'), filename)


def allowed_action(func):
    setattr(func, 'is_allowed_action', None)
    return func


class JSONResponseMixin(object):
    def dispatch(self, *args, **kwargs):
        return super(JSONResponseMixin, self).dispatch(*args, **kwargs)

    def get(self, request, *args, **kwargs):
        action = kwargs.get('action')
        action = action and getattr(self, action, None)
        if not callable(action):
            return self._dispatch_super(request, *args, **kwargs)
        out_data = json.dumps(action(), cls=DjangoJSONEncoder)
        response = HttpResponse(out_data)
        response['Content-Type'] = 'application/json;charset=UTF-8'
        response['Cache-Control'] = 'no-cache'
        return response

    def post(self, request, *args, **kwargs):
        try:
            if not request.is_ajax():
                return self._dispatch_super(request, *args, **kwargs)
            in_data = json.loads(request.body)
            action = in_data.pop('action', kwargs.get('action'))
            handler = action and getattr(self, action, None)
            if not callable(handler):
                return self._dispatch_super(request, *args, **kwargs)
            if not hasattr(handler, 'is_allowed_action'):
                raise ValueError('Method "%s" is not decorated with @allowed_action' % action)
            out_data = json.dumps(handler(in_data), cls=DjangoJSONEncoder)
            return HttpResponse(out_data, content_type='application/json;charset=UTF-8')
        except ValueError as err:
            return HttpResponseBadRequest(err)

    def _dispatch_super(self, request, *args, **kwargs):
        base = super(JSONResponseMixin, self)
        handler = getattr(base, request.method.lower(), None)
        if callable(handler):
            return handler(request, *args, **kwargs)
        raise ValueError('This view can not handle method %s' % request.method)


def get_next_or_prev(models, item, reverse=False):
    getit = False
    i = 0
    if models.count() > 1:
        for m in models:
            if getit:
                if reverse:
                    if i == 1:
                        return models[len(models) - 1]
                    return models[i - 2]
                else:
                    return models[i]
            if item == m:
                getit = True
            i += 1
        if getit:
            if reverse:
                return models[len(models) - 2]
            return models[0]
    return False


from sorl.thumbnail.base import ThumbnailBackend
from os.path import basename
from sorl.thumbnail.helpers import tokey, serialize


class SEOThumbnailBackend(ThumbnailBackend):
    def _get_thumbnail_filename(self, source, geometry_string, options):
        key = tokey(source.key, geometry_string, serialize(options))
        path = '%s/%s/%s' % (key[:2], key[2:4], key)
        return '%s%s/%s' % (settings.THUMBNAIL_PREFIX, path, basename(source.name))


def create_slug(model, obj):
    if obj.name:
        s = slugify(obj.name)
        i = 1
        exists = model.objects.language(obj.language_code).filter(slug=s).exists()
        while exists:
            s = u'%s-%s' % (slugify(obj.name), i)
            exists = model.objects.language(obj.language_code).filter(slug=s).exists()
            i += 1
        return s
    return ''