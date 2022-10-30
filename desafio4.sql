SELECT usu.nome AS usuario,
IF (MAX(YEAR(his.data_reproducao)) > '2020', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario AS usu INNER JOIN SpotifyClone.historico_de_reproducoes AS his
ON usu.usuario_id = his.usuario_id
GROUP BY usuario
ORDER BY usuario;