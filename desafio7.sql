SELECT art.nome AS artista,
	alb.nome AS album,
	COUNT(seg.usuario_id) AS seguidores
FROM SpotifyClone.artista AS art
	INNER JOIN SpotifyClone.album as alb ON art.artista_id = alb.artista_id
	INNER JOIN SpotifyClone.seguidores_dos_artistas AS seg ON art.artista_id = seg.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;