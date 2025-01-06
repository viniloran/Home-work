CREATE TABLE genre
(
	genre_id integer PRIMARY KEY,
	title text NOT NULL
);

CREATE TABLE artist
(
	artist_id integer PRIMARY KEY,
	nickname text NOT NULL,
	fk_genre_id integer  REFERENCES genre(genre_id) NOT NULL
);

CREATE TABLE album
(
	album_id integer PRIMARY KEY,
	title text NOT NULL,
	fk_artist_id integer  REFERENCES artist(artist_id) NOT NULL
	
);

CREATE TABLE song
(
	song_id integer PRIMARY KEY, 
	name_song text NOT NULL,
	year_edition DATE,
	fk_albom_id integer  REFERENCES album(album_id) NOT NULL
)
