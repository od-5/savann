from contents.models import Post
from django.http import Http404
from django.shortcuts import render
from django.views.generic import DetailView


class PostDetail(DetailView):
    template_name = 'contents/post.html'
    model = Post

    def get_object(self, queryset=None):
        queryset = self.get_queryset()
        slug = self.kwargs.get(self.slug_url_kwarg, None)
        queryset = queryset.filter(translations__slug=slug)
        try:
            obj = queryset.get()
        except queryset.model.DoesNotExist:
            raise Http404("No %(verbose_name)s found matching the query" %
                          {'verbose_name': queryset.model._meta.verbose_name})
        return obj