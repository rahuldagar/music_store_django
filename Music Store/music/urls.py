from django.conf.urls import patterns, include, url
from django.views import generic
from musicapp.model import MasterDb
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
   url(r'^login/$', 'django.contrib.auth.views.login'),
   url(r'^$', 'musicapp.views.main', name='main'),
   url(r'^$Browse', 'musicapp.views.main', name='main'),
   url(r'^logout/$', 'django.contrib.auth.views.logout'),
   url(r'^getTopTrack/$', 'musicapp.views.getTopTrack'),
   url(r'^userPlaylists/$', 'musicapp.views.getUserPlaylist'),
   url(r'^addToPlaylist/$', 'musicapp.views.addToPlaylist'),
   url(r'^removeFromPlaylist/$', 'musicapp.views.removeFromPlaylist'),
   url(r'^addToPlaylistFromTop/$', 'musicapp.views.addToPlaylist'),
   url(r'^admin/', include(admin.site.urls)),
)
# urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'musicapp.views.home', name='home'),
    # url(r'^Data/$',generic.ListView.as_view(
    # 	queryset=MasterDb.objects.all(),
    # 	paginate_by=1),name='list-view'),
    # url(r'^music/', include('music.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
# )
