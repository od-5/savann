from contents.views import PostDetail
from django.conf.urls import patterns, include, url
from django.conf.urls.i18n import i18n_patterns
from django.contrib import admin
from savann import settings
from cms_plugins.views import robots, AjaxMethods, FrontView
from cms.sitemaps import CMSSitemap

admin.autodiscover()

sitemaps = {
    'cmspages': CMSSitemap,
}

urlpatterns = patterns(
    '',
    url(r'^robots\.txt$', robots),
)

urlpatterns += i18n_patterns('',
                            url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
                            url(r'^admin/', include(admin.site.urls)),
                            # url(r'^robots\.txt$', robots),
                            url(r'^redactor/', include('redactor.urls')),
                            url(r'^ajax$', AjaxMethods.as_view(), name='ajax'),
                            url(r'^sitemap\.xml$', 'django.contrib.sitemaps.views.sitemap', {'sitemaps': sitemaps}),
                            url(r'^(?P<page>.*)/post/(?P<slug>.*)$', PostDetail.as_view(), name='post_detail'),
                            url(r'^$', FrontView.as_view()),
                            url(r'^', include('cms.urls')),

)
if 'rosetta' in settings.INSTALLED_APPS:
    urlpatterns += patterns('',
                            url(r'^rosetta/', include('rosetta.urls')),
    )

if settings.DEBUG:
    urlpatterns = patterns('',
                           url(r'^media/(?P<path>.*)$', 'django.views.static.serve',
                               {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
                           url(r'', include('django.contrib.staticfiles.urls')),
    ) + urlpatterns
