# vim:fileencoding=utf-8
from django.core.urlresolvers import reverse
from django.db.models import permalink, ImageField
from cms.models import Page
from django.db import models
from hvad.manager import TranslationManager
from hvad.models import TranslatableModel, TranslatedFields
from redactor.fields import RedactorField
from savann.utils import create_slug, get_file_path


TYPE_BUTTON = (
    ('link-1 p5', u'Ссылка'),
    ('button-1', u'Зеленая кнопка'),
    ('button-2', u'Оранжевая кнопка'),
    ('button-3', u'Красная кнопка'),
)

MAIN_BLOCK = (
    ('first', u'Блок 1'),
    ('last', u'Блок 2'),
)


class Post(TranslatableModel):
    class Meta():
        verbose_name = u'Публикация'
        verbose_name_plural = u'Публикации'
        ordering = ['-date']

    date = models.DateTimeField(verbose_name=u'Дата добавления')
    image = ImageField(verbose_name=u'Изображение', upload_to=get_file_path, blank=True, null=True,
                       help_text=u'Для отображения в списке животных')
    cat = models.BooleanField(verbose_name=u'Кошка', default=False, help_text=u'Отображение на страницах с шаблоном "Питомник"')
    translations = TranslatedFields(
        name=models.CharField(verbose_name=u'Название', max_length=255),
        pages=models.ForeignKey(Page, related_name='posts', verbose_name=u'Страницы', blank=True, null=True),
        slug=models.SlugField(verbose_name=u'Уникальный URL', unique=True, max_length=255, blank=True, null=True,
                            help_text=u'Заполняется автоматически'),
        url=models.CharField(verbose_name=u'Произвольная ссылка', max_length=255, blank=True, null=True),
        short=RedactorField(verbose_name=u'Краткое описание', blank=True, null=True),
        description=RedactorField(verbose_name=u'Описание', blank=True, null=True),
        active=models.BooleanField(default=False, verbose_name=u'Опубликовано'),
        meta_title=models.CharField(max_length=255, verbose_name=u'Тайтл', null=True, blank=True),
        meta_keywords=models.CharField(max_length=255, verbose_name=u'Keywords', null=True, blank=True),
        meta_description=models.TextField(max_length=255, verbose_name=u'Description', null=True, blank=True)
    )
    type_button = models.CharField(choices=TYPE_BUTTON, verbose_name=u'Тип подробной ссылки', max_length=255,
                                   default='link')
    main_block = models.CharField(verbose_name=u'Отображать на главной', choices=MAIN_BLOCK, blank=True, null=True,
                                  max_length=255)
    menu = models.BooleanField(verbose_name=u'Отображать в меню', default=True)

    def __unicode__(self):
        return self.lazy_translation_getter('name', self.name)

    def save(self, force_insert=False, force_update=False, using=None,
             update_fields=None):
        if not self.slug:
            self.slug = create_slug(Post, self)
        return super(Post, self).save(force_insert=False, force_update=False, using=None,
                                                    update_fields=None)

    # @permalink
    def get_absolute_url(self):
        if self.url:
            return self.url
        if self.pages:
            return reverse('post_detail', kwargs={'page': self.pages.get_slug(), 'slug': self.slug})
        return reverse('post_detail', kwargs={'page': '', 'slug': self.slug})


class Gallery(models.Model):
    class Meta():
        verbose_name = u'Галерея'
        verbose_name_plural = u'Галереи'

    name = models.CharField(verbose_name=u'Название', max_length=255)

    def __unicode__(self):
        return self.name


class GalleryImage(models.Model):
    class Meta():
        verbose_name = u'Изображение'
        verbose_name_plural = u'Изображения'

    gallery = models.ForeignKey(Gallery, related_name='images')
    name = models.CharField(verbose_name=u'Название', max_length=255)
    image = ImageField(verbose_name=u'Изображение', upload_to=get_file_path, blank=True, null=True)
    description = RedactorField(verbose_name=u'Описание', blank=True, null=True)

    def __unicode__(self):
        return self.name


class FeedBack(models.Model):
    class Meta():
        verbose_name = u'Обратная связь'
        verbose_name_plural = u'Обратная связь'

    date = models.DateTimeField(verbose_name=u'Дата', auto_now_add=True)
    name = models.CharField(verbose_name=u'Имя', max_length=255)
    email = models.CharField(verbose_name=u'E-mail', max_length=255)
    phone = models.CharField(verbose_name=u'Телефон', max_length=255, blank=True, null=True)
    message = models.TextField(verbose_name=u'Сообщение', max_length=255)

    def __unicode__(self):
        return self.name
