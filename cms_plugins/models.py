# vim:fileencoding=utf-8
from contents.models import Post, Gallery
from django.template.defaultfilters import safe, striptags
from cms.models import CMSPlugin, Page
from django.db import models
from redactor.fields import RedactorField
from savann.utils import get_file_path
from sorl.thumbnail import ImageField


class Block(models.Model):
    class Meta():
        verbose_name = u'Блок'
        verbose_name_plural = u'Блоки'

    name = models.CharField(verbose_name=u'Название', max_length=255)
    html = models.TextField(verbose_name=u'Код')

    def __unicode__(self):
        return self.name


class Robot(models.Model):
    class Meta():
        ordering = ['sort']

    name = models.CharField(verbose_name=u'Наименование', max_length=255)
    content = models.TextField(verbose_name=u'Содержимое', max_length=255)
    sort = models.IntegerField(verbose_name=u'Приоритет', default=0)

    def __unicode__(self):
        return self.name


class Keyword(models.Model):
    page = models.ForeignKey(Page, related_name='keywords', verbose_name=u'Страница')
    text = models.TextField(verbose_name=u'Keywords')

    def __unicode__(self):
        return self.page.get_title()


H_CHOICE = (
    ('1', 'H1'),
    ('2', 'H2'),
    ('3', 'H3'),
    ('4', 'H4'),
    ('5', 'H5'),
    ('6', 'H6'),
)


class TextModelPlugin(CMSPlugin):
    class_block = models.CharField(verbose_name=u'Класс', max_length=255, blank=True, null=True)
    name = models.CharField(verbose_name=u'Заголовок', blank=True, null=True, max_length=255)
    h = models.CharField(verbose_name=u'Тип заголовка', max_length=255, choices=H_CHOICE, blank=True, null=True)
    text = RedactorField(verbose_name=u'Текст', blank=True, null=True)

    def __unicode__(self):
        if self.name:
            return safe(self.name)
        else:
            return u'Текст %s' % self.id


class LogoModelPlugin(CMSPlugin):
    name = models.CharField(verbose_name=u'Заголовок', blank=True, null=True, max_length=255)
    html = models.TextField(verbose_name=u'HTML', blank=True, null=True)
    href = models.CharField(verbose_name=u'Ссылка', max_length=255, blank=True, null=True)
    text = models.TextField(verbose_name=u'Текст', blank=True, null=True)

    def __unicode__(self):
        if self.name:
            return safe(self.name)


class HtmlInsertModel(CMSPlugin):

    name = models.CharField(verbose_name=u'Название', max_length=255, blank=True, null=True)
    html = models.TextField(verbose_name=u'Код')

    def __unicode__(self):
        if self.name:
            return self.name


class BlockPlugin(CMSPlugin):

    block = models.ForeignKey(Block, related_name='plugins', verbose_name=u'Блок')

    def __unicode__(self):
        return self.block.name


class Slider(models.Model):
    class Meta():
        verbose_name = u'Слайд'
        verbose_name_plural = u'Слайдер'

    name = models.CharField(verbose_name=u'Название', max_length=255)

    def __unicode__(self):
        return self.name


class SliderImage(models.Model):
    class Meta():
        verbose_name = u'Изображение'
        verbose_name_plural = u'Изображение'
        ordering = ['sort']

    slider = models.ForeignKey(Slider, related_name='images')
    image = ImageField(verbose_name=u'Изображение', upload_to=get_file_path)
    sort = models.IntegerField(verbose_name=u'Приоритет', default=0)

    def __unicode__(self):
        return u'Изображение %s' % str(self.id)


class SliderPluginModel(CMSPlugin):
    slider = models.ForeignKey(Slider, related_name='images_plugin', verbose_name=u'Слайдер')


class CatsModel(CMSPlugin):
    name = models.CharField(verbose_name=u'Заголовок', max_length=255)
    auto = models.BooleanField(verbose_name=u'Выбирать автоматически', default=False)
    cats = models.ManyToManyField(Post, verbose_name=u'Выбор животных', blank=True, null=True,
                                  help_text=u'Если не выбрано "Выбирать автоматически"')

    def __unicode__(self):
        return self.name

    def copy_relations(self, oldinstance):
        self.cats = oldinstance.cats.all()


class BannerModel(CMSPlugin):

    file = models.FileField(verbose_name=u'Файл', help_text='.jpg, .jpeg, .swf .png', upload_to=get_file_path)
    blank = models.BooleanField(verbose_name=u'Открывать в новом окне', default=False)
    url = models.CharField(verbose_name=u'Ссылка', max_length=255)
    width = models.CharField(verbose_name=u'Ширина', max_length=255, blank=True, null=True)
    height = models.CharField(verbose_name=u'Высота', max_length=255, blank=True, null=True)


class GalleryModel(CMSPlugin):

    gallery = models.ForeignKey(Gallery, verbose_name=u'Галерея')


class MenuModel(CMSPlugin):
    class Meta():
        pass

    def copy_relations(self, oldinstance):
        for associated_item in oldinstance.associated_item.all():
            associated_item.pk = None
            associated_item.plugin = self
            associated_item.save()


class MenuInline(models.Model):
    name = models.CharField(max_length=255, verbose_name=u'Название')
    url = models.CharField(max_length=255, verbose_name=u'Ссылка', blank=True, null=True)
    html = models.BooleanField(verbose_name=u'На новой вкладке', default=False)
    plugin = models.ForeignKey(MenuModel, related_name='associated_item')


class ContactModel(CMSPlugin):
    name = models.CharField(verbose_name=u'Заголовок', max_length=255)
    name_form = models.CharField(verbose_name=u'Заголовок формы', max_length=255)
    map = models.TextField(verbose_name=u'Код карты', help_text='iframe')
    contact_info = RedactorField(verbose_name=u'Контакты')

    def __unicode__(self):
        return self.name