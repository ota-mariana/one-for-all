SELECT musica.nome AS nome_musica,
CASE
	WHEN musica.nome = 'The Bard’s Song' THEN REPLACE(musica.nome, 'Bard’s', 'QA’s')
    WHEN musica.nome = 'O Medo de Amar é o Medo de Ser Livre' THEN REPLACE(musica.nome, 'Amar', 'Code Review')
    WHEN musica.nome = 'Como Nossos Pais' THEN REPLACE(musica.nome, 'Pais', 'Pull Requests')
    WHEN musica.nome = 'BREAK MY SOUL' THEN REPLACE(musica.nome, 'SOUL', 'CODE')
    WHEN musica.nome = 'ALIEN SUPERSTAR' THEN REPLACE(musica.nome, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.musica
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica DESC;