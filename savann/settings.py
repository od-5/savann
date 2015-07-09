# vim:fileencoding=utf-8
# Django settings for savann project.

import os
gettext = lambda s: s
DEBUG = True
PROJECT_PATH = os.path.abspath(os.path.dirname(__file__))
TEMPLATE_DEBUG = DEBUG
THUMBNAIL_DEBUG = DEBUG

ADMINS = (
    ('Your Name', 'iamfiery@gmail.com'),
    ('Your Name', 'zloi.gremlin@gmail.com'),
)

MANAGERS = ADMINS

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'savann',
        'USER': 'savann',
        'PASSWORD': '',
        'HOST': '',
        'PORT': '',
                'OPTIONS': {
            "init_command": "SET foreign_key_checks = 0;",
        }
    }
}

ALLOWED_HOSTS = []

TIME_ZONE = 'Europe/Moscow'

LANGUAGE_CODE = 'ru'


SITE_ID = 1

USE_I18N = True

USE_L10N = True

USE_TZ = True

MEDIA_ROOT = os.path.join(PROJECT_PATH, "media/")

MEDIA_URL = '/media/'

STATIC_ROOT = os.path.join(PROJECT_PATH, "media/static/")

STATIC_URL = '/static/'

STATICFILES_DIRS = (
    os.path.join(PROJECT_PATH, 'static'),
)

STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
#     'compressor.finders.CompressorFinder',
)

SECRET_KEY = 'nmqus@&u_9#am013&#bgc^zy0ejnu-om#i+tpr40#rnoo9sren'

TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',
)

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'django.contrib.admindocs.middleware.XViewMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.contrib.flatpages.middleware.FlatpageFallbackMiddleware',
    'djconfig.middleware.DjConfigLocMemMiddleware',
    'django.middleware.gzip.GZipMiddleware',
    'cms.middleware.page.CurrentPageMiddleware',
    'cms.middleware.user.CurrentUserMiddleware',
    'cms.middleware.toolbar.ToolbarMiddleware',
    'cms.middleware.language.LanguageCookieMiddleware',
    'spirit.middleware.TimezoneMiddleware',
    'spirit.middleware.LastIPMiddleware',
    'spirit.middleware.LastSeenMiddleware',
    'spirit.middleware.ActiveUserMiddleware',
    'spirit.middleware.PrivateForumMiddleware',


)


ROOT_URLCONF = 'savann.urls'

WSGI_APPLICATION = 'savann.wsgi.application'

TEMPLATE_DIRS = (
    PROJECT_PATH + '/templates',
)

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    # 'django.contrib.flatpages',
    'djangocms_admin_style',
    'django.contrib.admin',
    'django.contrib.admindocs',
    'django.contrib.sitemaps',
    'spirit',
    'haystack',
    'reversion',
    'sorl.thumbnail',
    'cms',
    'menus',
    'sekizai',
    'hvad',
    'cms_plugins',
    'mptt',
    'redactor',
    # 'endless_pagination',
    'contents',
    'djconfig',
    'rosetta',
    'codemirror',
    'django_mandrill',
 )

ST_MARKDOWN_EXT =''

ST_COMMENTS_PER_PAGE = 20
ST_COMMENTS_PAGE_VAR = 'page'

ST_TOPIC_PRIVATE_CATEGORY_PK = None
ST_UNCATEGORIZED_CATEGORY_PK = None

ST_RATELIMIT_ENABLE = True
ST_RATELIMIT_CACHE_PREFIX = 'srl'
ST_RATELIMIT_CACHE = 'default'

ST_NOTIFICATIONS_PER_PAGE = 20

ST_MENTIONS_PER_COMMENT = 30

ST_YT_PAGINATOR_PAGE_RANGE = 3

ST_SEARCH_QUERY_MIN_LEN = 3

ST_USER_LAST_SEEN_THRESHOLD_MINUTES = 1

ST_PRIVATE_FORUM = False

ST_ALLOWED_UPLOAD_IMAGE_FORMAT = ('jpeg', 'png', 'gif')

AUTHENTICATION_BACKENDS = (
    'django.contrib.auth.backends.ModelBackend',
    'spirit.backends.user.EmailAuthBackend',
)

LOGIN_URL = 'spirit:user-login'
LOGIN_REDIRECT_URL = 'spirit:profile-update'

AUTO_RENDER_SELECT2_STATICS = False

INTERNAL_IPS = ()
APPEND_SLASH = True

TEST_RUNNER = 'django.test.runner.DiscoverRunner'

AUTH_USER_MODEL = 'spirit.User'

TEMPLATE_CONTEXT_PROCESSORS = (
    'django.contrib.auth.context_processors.auth',
    'django.core.context_processors.debug',
    'django.core.context_processors.i18n',
    'django.core.context_processors.request',
    'django.core.context_processors.media',
    'django.core.context_processors.static',
    'django.core.context_processors.tz',
    'django.contrib.messages.context_processors.messages',
    'djconfig.context_processors.config',
    'cms.context_processors.media',
    'sekizai.context_processors.sekizai',
)
CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
    },
    'djconfig': {
        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
    },
}
DJC_BACKEND = 'djconfig'


SESSION_SERIALIZER = 'django.contrib.sessions.serializers.JSONSerializer'


REDACTOR_OPTIONS = {
    'lang': 'ru',
    'removeStyles': True,
    'convertDivs': True,
    'convertLinks': False,
    'focus': False,
    'plugins': ['table', 'video', 'fullscreen', 'fontsize', 'fontcolor', 'imagemanager']
}

REDACTOR_UPLOAD = "uploads"

# EMAIL_BACKEND = 'django.core.mail.backends.filebased.EmailBackend'
# EMAIL_FILE_PATH = os.path.join(PROJECT_PATH, "media/message")

DEFAULT_FROM_EMAIL = 'admin@newstracker.ru'
DEFAULT_TO_EMAIL = ['gulnaz.sharifzyanova@gmail.com',]


HAYSTACK_CONNECTIONS = {
    'default': {
        'ENGINE': 'haystack.backends.whoosh_backend.WhooshEngine',
        'PATH': os.path.join(PROJECT_PATH, "media/", 'whoosh_index'),
    },
}

FILE_UPLOAD_MAX_MEMORY_SIZE = 0
FILE_UPLOAD_PERMISSIONS = 0644

LOCALE_PATHS = ((os.path.join(PROJECT_PATH, 'locale')),)
ROSETTA_MESSAGES_PER_PAGE = 150

EMAIL_BACKEND = 'django_mandrill.mail.backends.mandrillbackend.EmailBackend'
MANDRILL_API_KEY = 'Es3dqHcjNOkaLysPC-NdzA'


LANGUAGES = [
    ('ru', u'RU'),
    ('en', u'EN'),
    ('tr', u'TR'),
]


CMS_TEMPLATES = (
    ('base.html', u'Главная'),
    ('inner.html', u'Внутренние страницы'),
    ('cats.html', u'Питомник'),

)


CMS_SEO_FIELDS = True

CODEMIRROR_CONFIG = {'htmlMode': True, 'lineNumbers': True}

THUMBNAIL_PREFIX = 'cache/'
THUMBNAIL_BACKEND = 'savann.utils.SEOThumbnailBackend'

CMS_TOOLBARS = [
    'cms.cms_toolbar.PlaceholderToolbar',
    'cms.cms_toolbar.BasicToolbar',
    'cms.cms_toolbar.PageToolbar',
]


LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        }
    },
    'handlers': {
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false'],
            'class': 'django.utils.log.AdminEmailHandler'
        }
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins'],
            'level': 'ERROR',
            'propagate': True,
        },
    }
}


MIGRATION_MODULES = {
    'cms': 'cms.migrations_django',
    'menus': 'menus.migrations_django',
    'contents': 'contents.migrations',

}


try:
    from local_settings import *
except ImportError:
    pass



