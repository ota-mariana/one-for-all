SELECT mus.nome AS cancao, COUNT(his.musica_id) AS reproducoes
FROM SpotifyClone.musica AS mus INNER JOIN SpotifyClone.historico_de_reproducoes AS his
ON mus.musica_id = his.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;