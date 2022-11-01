SELECT COUNT(his.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes AS his
	INNER JOIN SpotifyClone.usuario as u ON u.usuario_id = his.usuario_id
WHERE u.nome = 'Barbara Liskov';