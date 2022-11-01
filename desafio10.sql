SELECT m.nome AS nome,
COUNT(his.usuario_id) AS reproducoes
FROM SpotifyClone.musica AS m
	INNER JOIN SpotifyClone.historico_de_reproducoes AS his
	ON m.musica_id = his.musica_id
	INNER JOIN SpotifyClone.usuario AS u
    ON u.usuario_id = his.usuario_id
WHERE u.plano_id = 1 OR u.plano_id = 4
GROUP BY nome
ORDER BY nome;