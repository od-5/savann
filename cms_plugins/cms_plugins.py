# vim:fileencoding=utf-8
import random
from django.contrib import admin
from django.contrib.admin.widgets import FilteredSelectMultiple
from codemirror import CodeMirrorTextarea
from contents.models import Post
from django import forms
from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from models import HtmlInsertModel, TextModelPlugin, BlockPlugin, SliderPluginModel, LogoModelPlugin, CatsModel, \
    BannerModel, GalleryModel, MenuInline, MenuModel, ContactModel


class HtmlForm(forms.ModelForm):
    class Meta():
        model = HtmlInsertModel
    html = forms.CharField(widget=CodeMirrorTextarea(mode="xml", theme="xq-dark"))


class HtmlInsertPlugin(CMSPluginBase):
    model = HtmlInsertModel
    name = u'Html вставка'
    form = HtmlForm
    render_template = 'plugins/html-insert.html'

    def render(self, context, instance, placeholder):
        context.update({'plugin': instance})
        return context


class BlockInsertPlugin(CMSPluginBase):
    model = BlockPlugin
    name = u'Блок'
    render_template = 'plugins/html-insert.html'

    def render(self, context, instance, placeholder):
        context.update({'plugin': instance})
        return context


class TextPlugin(CMSPluginBase):
    model = TextModelPlugin
    render_template = 'plugins/text.html'
    name = u'Текст'
    fieldsets = (
        ('', {
            'fields': [('name', 'h'), 'class_block', 'text']}),
    )

    def render(self, context, instance, placeholder):
        context.update({'plugin': instance})
        return context


class LogoPlugin(CMSPluginBase):
    model = LogoModelPlugin
    render_template = 'plugins/logo.html'
    name = u'Лого'

    def render(self, context, instance, placeholder):
        context.update({'plugin': instance})
        return context


class SliderPlugin(CMSPluginBase):
    model = SliderPluginModel
    render_template = 'plugins/slider.html'
    name = u'Слайдер'

    def render(self, context, instance, placeholder):
        context.update({'plugin': instance})
        return context


class CatsForm(forms.ModelForm):
    class Meta():
        model = CatsModel
        exclude = []
    cats = forms.ModelMultipleChoiceField(queryset=Post.objects.language().filter(cat=True), required=False,
                                           label=u'Животные', widget=FilteredSelectMultiple(u"Животные", False, attrs={'rows': '2'}))


class CatsPlugin(CMSPluginBase):
    model = CatsModel
    render_template = 'plugins/cats.html'
    form = CatsForm
    name = u'Блок с животными'

    def render(self, context, instance, placeholder):
        if instance.auto:
            cats = Post.objects.language().filter(cat=True, active=True)
            cats = random.sample(cats, len(cats))[:3]
        else:
            cats = instance.cats.all()
        context.update({'plugin': instance, 'cats': cats})
        return context


class BannerPlugin(CMSPluginBase):
    model = BannerModel
    render_template = 'plugins/banner.html'
    name = u'Баннер'

    def render(self, context, instance, placeholder):
        swf = False
        if instance.file.name.split('.')[-1] == 'swf':
            swf = True
        context.update({'plugin': instance, 'swf': swf})
        return context


class GalleryPlugin(CMSPluginBase):
    model = GalleryModel
    render_template = 'plugins/gallery.html'
    name = u'Галлерея'

    def render(self, context, instance, placeholder):
        context.update({'plugin': instance})
        return context


class HeaderAdmin(admin.TabularInline):
    model = MenuInline
    extra = 1


class MenuPlugin(CMSPluginBase):
    model = MenuModel
    render_template = 'plugins/menu.html'
    name = u'Menu'
    inlines = [HeaderAdmin]

    def render(self, context, instance, placeholder):
        context.update({'plugin': instance})
        return context


class ContactPlugin(CMSPluginBase):
    model = ContactModel
    render_template = 'plugins/contact.html'
    name = u'Контакты'

    def render(self, context, instance, placeholder):
        context.update({'plugin': instance})
        return context


plugin_pool.register_plugin(ContactPlugin),
plugin_pool.register_plugin(MenuPlugin),
plugin_pool.register_plugin(GalleryPlugin),
plugin_pool.register_plugin(BannerPlugin),
plugin_pool.register_plugin(CatsPlugin),
plugin_pool.register_plugin(LogoPlugin),
plugin_pool.register_plugin(SliderPlugin),
plugin_pool.register_plugin(TextPlugin),
plugin_pool.register_plugin(BlockInsertPlugin),
plugin_pool.register_plugin(HtmlInsertPlugin),