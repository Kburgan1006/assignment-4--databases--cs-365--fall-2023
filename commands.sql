--Concat
SELECT CONCAT(artist.artist_name, " recorded ", album.album_name) AS Recording FROM album JOIN artist ON artist.artist_id = album.artist_id;

--Subquery
SELECT artist_name, (SELECT DISTINCT album_name FROM album WHERE artist.artist_id = album.artist_id LIMIT 1) AS album_name FROM artist;

--Compiles
SELECT artist_name, album_name FROM artist INNER JOIN album USING (artist_id);

--Contains
SELECT album_name, track_name FROM album INNER JOIN track ON(album.artist_id = track.artist_id AND album.album_id = track.album_id);

--WasPlayedAt
SELECT track_name, played FROM track INNER JOIN played ON(played.artist_id = track.artist_id AND played.album_id = track.album_id AND track.track_id = played.track_id);


