INSERT INTO public.Artist(id, artist_name, alias)
	VALUES (1, ' Elena Khruleva', ' Vaenga');

INSERT INTO public.Artist(id, artist_name, alias)
	VALUES (2, ' Marina Abrosimova', ' МакSим');

INSERT INTO public.Artist(id, artist_name, alias)
	VALUES (3, ' Alla Perfilova', ' Valeria');

INSERT INTO public.Artist(id, artist_name, alias)
	VALUES (4, ' Sarah Manakhimova', ' Jasmine');

INSERT INTO public.Artist(id, artist_name, alias)
	VALUES (5, ' Larisa Kudelman', ' Dolina');

INSERT INTO public.Artist(id, artist_name, alias)
	VALUES (6, ' Ekaterina Chuprinina', ' Lel');

INSERT INTO public.Artist(id, artist_name, alias)
	VALUES (7, ' Nadezhda Sessateleva', ' Babkina');

INSERT INTO public.Artist(id, artist_name, alias)
	VALUES (8, ' Elena Lovochkina', ' Apina');

INSERT INTO public. Genre(id, genre_name)
	VALUES (1, ' pop');

INSERT INTO public. Genre(id, genre_name)
	VALUES (2, ' folk');

INSERT INTO public. Genre(id, genre_name)
	VALUES (3, ' jazz');

INSERT INTO public. Genre(id, genre_name)
	VALUES (4, ' romance');

INSERT INTO public. Genre(id, genre_name)
	VALUES (5, ' chanson');


INSERT INTO public.Albums(id, album_name, year_album)
	VALUES (1, ‘#re#la', 2021);

INSERT INTO public.Albums(id, album_name, year_album)
	VALUES (2, ‘Difficult age', 2006);

INSERT INTO public.Albums(id, album_name, year_album)
	VALUES (3, ‘The best', 2011);

INSERT INTO public.Albums(id, album_name, year_album)
	VALUES (4, ‘Long days’, 2012);

INSERT INTO public.Albums(id, album_name, year_album)
	VALUES (5, ‘Grand Collection’, 2011);

INSERT INTO public.Albums(id, album_name, year_album)
	VALUES (6, ‘Jaga-jaga’, 2015);

INSERT INTO public.Albums(id, album_name, year_album)
	VALUES (7, ‘Babkin rock’, 2010);

INSERT INTO public.Albums(id, album_name, year_album)
	VALUES (8, ‘I don't dream about you’, 2012);

INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (1, 'I repent', 4.48, 1);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (2, ‘flowers', 4.25, 1);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (3, 'Softness', 3.16, 2);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (4, 'Sleep', 3.21, 2);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (5, 'In half', 3.16, 3);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (6, 'My Moscow', 3.31, 3);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (7, ' Rain outside the window', 3.24, 4);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (8, ‘Summer Day', 3.32, 4);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (9, ‘Forgive me', 4.41, 5);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (10, ‘Restaurant', 3.26, 5);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (11, 'Lights', 3.27, 6);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (12, 'I'm leaving', 3.18, 6);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (13, 'Rose’, 5.22, 7);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (14, ‘Suffering', 3.52, 7);
INSERT INTO public.track(id, title, time_tracks, fk_tracks_albums_id)
	VALUES (15, ‘The Flying Dutchman', 3.30, 8);

INSERT INTO public.collection(id, collection_name, year_collection )
	VALUES (1, ‘Legends of Russian rock, 2018);
INSERT INTO public.collection(id, collection_name, year_collection )
	VALUES (2, ‘Beautiful Love Songs’, 2019);
INSERT INTO public.collection(id, collection_name, year_collection )
	VALUES (3, ‘Hits of all time', 2020);
INSERT INTO public.collection(id, collection_name, year_collection )
	VALUES (4, ‘Legends of foreign rock’, 2018);
INSERT INTO public.collection(id, collection_name, year_collection )
	VALUES (5, ‘Songs to tears’, 2018);
INSERT INTO public.collection(id, collection_name, year_collection )
	VALUES (6, ‘Music for cafes’, 2018);
INSERT INTO public.collection(id, collection_name, year_collection )
	VALUES (7, ‘Songs about Love’, 2020);
INSERT INTO public.collection(id, collection_name, year_collection )
	VALUES (8, ‘Morning music’, 2019);

INSERT INTO public.GenreArtist (id, genre_id, artist_id )
	VALUES (1, 1, 8);
INSERT INTO public.GenreArtist (id, genre_id, artist_id )
	VALUES (2, 2, 6);
INSERT INTO public.GenreArtist (id, genre_id, artist_id )
	VALUES (3, 3, 4);
INSERT INTO public.GenreArtist (id, genre_id, artist_id )
	VALUES (4, 5, 2);
INSERT INTO public.GenreArtist (id, genre_id, artist_id )
	VALUES (5, 1, 7);
INSERT INTO public.GenreArtist (id, genre_id, artist_id )
	VALUES (6, 2, 5);
INSERT INTO public.GenreArtist (id, genre_id, artist_id )
	VALUES (7, 3, 3);
INSERT INTO public.GenreArtist (id, genre_id, artist_id )
	VALUES (8, 4, 1);

INSERT INTO public.ArtistAlbums (artist_id, albums_id)
	VALUES (1, 1);
INSERT INTO public.ArtistAlbums (artist_id, albums_id)
	VALUES (2, 2);
INSERT INTO public.ArtistAlbums (artist_id, albums_id)
	VALUES (3, 3);
INSERT INTO public.ArtistAlbums (artist_id, albums_id)
	VALUES (4, 4);
INSERT INTO public.ArtistAlbums (artist_id, albums_id)
	VALUES (5, 5);
INSERT INTO public.ArtistAlbums (artist_id, albums_id)
	VALUES (6, 6);
INSERT INTO public.ArtistAlbums (artist_id, albums_id)
	VALUES (7, 7);
INSERT INTO public.ArtistAlbums (artist_id, albums_id)
	VALUES (8, 8);

INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (1, 7, 1);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (2, 2, 2);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (3, 8, 3);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (4, 3, 4);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (5, 7, 5);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (6, 1, 6);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (7, 8, 7);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (8, 4, 8);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (9, 2, 9);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (10, 5, 10);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (11, 8, 11);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (12, 4, 12);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (13, 7, 13);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (14, 1, 14);
INSERT INTO public.CollectionTracks (id, collection_id, tracks_id)
	VALUES (15, 3, 15);
