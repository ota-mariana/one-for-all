SELECT COUNT(mus.musica_id) AS cancoes, COUNT(DISTINCT alb.artista_id) AS artistas, COUNT(DISTINCT alb.album_id) AS albuns 
FROM SpotifyClone.musica AS mus INNER JOIN SpotifyClone.album AS alb
ON mus.album_id = alb.album_id;