# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models

class AlbumTbl(models.Model):
    album_id = models.CharField(max_length=36, primary_key=True)
    album_name = models.CharField(max_length=135)
    class Meta:
        db_table = u'album_tbl'

class ArtistTbl(models.Model):
    artist_id = models.CharField(max_length=36, primary_key=True)
    artist_name = models.CharField(max_length=135)
    class Meta:
        db_table = u'artist_tbl'

class GenreTbl(models.Model):
    genre_id = models.CharField(max_length=36, primary_key=True)
    genre_name = models.CharField(max_length=135)
    class Meta:
        db_table = u'genre_tbl'

class ReleaseLblTbl(models.Model):
    release_lbl_id = models.CharField(max_length=36, primary_key=True)
    release_lbl_name = models.CharField(max_length=135)
    class Meta:
        db_table = u'release_lbl_tbl'

class TrackId(models.Model):
    track_id = models.CharField(max_length=36, primary_key=True)
    track_name = models.CharField(max_length=135)
    class Meta:
        db_table = u'track_id'

class MasterDb(models.Model):
    song_id = models.CharField(max_length=36, primary_key=True)
    song_name = models.CharField(max_length=135)
    artist = models.ForeignKey(ArtistTbl)
    track = models.ForeignKey(TrackId)
    album = models.ForeignKey(AlbumTbl)
    release_year = models.CharField(max_length=12)
    release_lbl = models.ForeignKey(ReleaseLblTbl)
    genre = models.ForeignKey(GenreTbl)
    download_times = models.IntegerField()
    class Meta:
        db_table = u'master_db'


class UserCredentials(models.Model):
    user_id = models.CharField(max_length=36, primary_key=True)
    password = models.CharField(max_length=75)
    class Meta:
        db_table = u'user_credentials'

class UserPlaylist(models.Model):
    user = models.ForeignKey(UserCredentials)
    pl_id = models.CharField(max_length=36, unique=True)
    pl_name = models.CharField(max_length=135)
    class Meta:
        db_table = u'user_playlist'

class PlaylistEntry(models.Model):
    pl = models.ForeignKey(UserPlaylist)
    song = models.ForeignKey(MasterDb)
    class Meta:
        db_table = u'playlist_entry'

class UserDetails(models.Model):
    user = models.ForeignKey(UserCredentials, primary_key=True)
    name = models.CharField(max_length=75)
    age = models.IntegerField(null=True, blank=True)
    gender = models.CharField(max_length=30, blank=True)
    location = models.CharField(max_length=75, blank=True)
    class Meta:
        db_table = u'user_details'

class UserLibraries(models.Model):
    user = models.ForeignKey(UserCredentials)
    song = models.ForeignKey(MasterDb)
    listened_times = models.CharField(max_length=36)
    class Meta:
        db_table = u'user_libraries'

