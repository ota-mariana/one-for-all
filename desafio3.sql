SELECT usu.nome AS usuario, COUNT(his.musica_id) AS qt_de_musicas_ouvidas, ROUND(SUM(duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuario AS usu INNER JOIN SpotifyClone.historico_de_reproducoes AS his
ON usu.usuario_id = his.usuario_id
INNER JOIN SpotifyClone.musica AS mus
ON his.musica_id = mus.musica_id
GROUP BY his.usuario_id
ORDER BY usuario;