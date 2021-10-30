SELECT album_name, year_albim FROM public.Albums
	WHERE year_album = 2018;


SELECT title, time_tracks  FROM public.Tracks
	ORDER BY time_tracks DESC
	LIMIT 1;

SELECT title FROM public.Tracks
	WHERE time_tracks >= 3.5;


SELECT collection_name FROM public.Collection
	WHERE year_collection BETWEEN 2018 and 2020;


SELECT alias FROM public.Artist
	WHERE not alias LIKE '%% %%';


SELECT title FROM public.Tracks
	WHERE title LIKE '%%my%%';
