   -- создание таблицы genre
CREATE TABLE IF NOT EXISTS Genre (
	id serial not null primary key,
	genre name varchar(100) not null 
);

--создание таблицы artist
CREATE TABLE IF NOT EXISTS Artist (
	id serial not null primary key,
	artist_name varchar(100) not null unique,
	alias varchar(100) not null unique
);

--создание таблицы genre – artist 
CREATE TABLE IF NOT EXISTS GenreArtist (
	id serial primary key,
genre_id integer not null references Genre(id),
artist_id integer not null references Artist(id)
);
--создание таблицы albums
CREATE TABLE IF NOT EXISTS Albums (
	id serial primary key,
	album_name integer not null unique,
	year_album integer not null unique 
);

--создание таблицы artist - albims
CREATE TABLE IF NOT EXISTS ArtistAlbums (
	artist_id integer not null references Artist(id),
albums_id integer not null references Albums(id),
constraint artist_albums_pk primary key (artist_id, albums_id)
);


-- создание таблицы tracks
CREATE TABLE IF NOT EXISTS Tracks (
	id serial primary key,
	title integer not null unique,
	time_tracks numeric(3,2)
	fk_tracks_albums_id integer references albums (id)
);
-- создание таблицы collection
CREATE TABLE IF NOT EXISTS Collection (
	id serial primary key,
	collection_name integer not null unique,
	year_collection integer not null unique 
);

-- создание таблицы collection – tracks
CREATE TABLE IF NOT EXISTS CollectionTracks (
	id serial primary key,
collection_id integer not null references Collection(id),
tracks_id integer not null references Tracks(id)
);
