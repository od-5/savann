# vim:fileencoding=utf-8
from cms.models import Page
from codemirror import CodeMirrorTextarea
from django import forms
from models import Keyword, Robot, Block, Slider, SliderImage
from django.contrib import admin


class BlockForm(forms.ModelForm):
    class Meta():
        model = Block

    html = forms.CharField(widget=CodeMirrorTextarea(mode="xml", theme="xq-dark"))


class BlockAdmin(admin.ModelAdmin):
    list_display = ['name']
    form = BlockForm


class FormPage(forms.ModelForm):
    class Meta():
        model = Keyword
    page = forms.ModelChoiceField(queryset=Page.objects.filter(publisher_is_draft=False), label=u'Страница')


class KeywordAdmin(admin.ModelAdmin):
    form = FormPage


class SliderImageAdmin(admin.TabularInline):
    model = SliderImage


class SliderAdmin(admin.ModelAdmin):
    inlines = [SliderImageAdmin]


admin.site.register(Slider, SliderAdmin)
admin.site.register(Block, BlockAdmin)
admin.site.register(Keyword, KeywordAdmin)
admin.site.register(Robot)
