# vim:fileencoding=utf-8
from django.contrib.admin.widgets import FilteredSelectMultiple
from cms.models import Page
from django import forms
from django.contrib import admin
from hvad.forms import TranslatableModelForm
from models import Post, Gallery, GalleryImage, FeedBack
from hvad.admin import TranslatableAdmin


class FormPage(TranslatableModelForm):
    class Meta():
        model = Post
        exclude = []
    pages = forms.ModelChoiceField(queryset=Page.objects.filter(publisher_is_draft=False), label=u'Страницы', required=False)


class PostAdmin(TranslatableAdmin):
    list_display = ['__unicode__', 'main_block']
    list_editable = ['main_block']
    form = FormPage


class GalleryImageAdmin(admin.TabularInline):
    model = GalleryImage


class GalleryAdmin(admin.ModelAdmin):
    inlines = [GalleryImageAdmin]


class FeedBackAdmin(admin.ModelAdmin):
    list_display = ['name', 'email', 'date']


admin.site.register(FeedBack, FeedBackAdmin)
admin.site.register(Gallery, GalleryAdmin)
admin.site.register(Post, PostAdmin)
