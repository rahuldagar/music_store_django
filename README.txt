README

A implementation of MVT (Model View Template) application architecture in Django.
It is a music store scenerio where users browse songs to add then to their playlist.
browsing songs under category:-
1) All songs on store:- If user is anonymous, all songs are displayed. 
						If user is logged in, songs not currently in user's playlist are displayed.
		Options(if user logged in):- "Add to Playlist"
2) Top 10 Songs:- If user is anonymous, top downloaded_songs are displayed.
				  If user is logged in, top downloaded_songs not currently in user's playlist are displayed.
		Options(if user logged in):- "Add to Playlist"
3) Playlist:- If user is anonymous, no songs are displayed.
			  If user is logged in the playlist songs are displayed.
		Options(if user logged in):- "Remove from Playlist"


Database Desing:-
"music_store_sql.sql" file is included to implement the database structure.



