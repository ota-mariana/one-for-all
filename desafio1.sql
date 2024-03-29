DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

     CREATE TABLE SpotifyClone.plano(
      plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      tipo VARCHAR(45) NOT NULL,
      valor DECIMAL(5,2) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      idade INT,
      data_assinatura DATETIME NOT NULL,
      plano_id INT NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano (plano_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artista(
      artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.seguidores_dos_artistas(
      artista_id INT,
      usuario_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY (artista_id, usuario_id),
      FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id),
      FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario (usuario_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
      album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      ano_lancamento INT,
      artista_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.musica(
      musica_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      duracao_segundos INT NOT NULL,
      album_id INT NOT NULL,
      FOREIGN KEY (album_id) REFERENCES SpotifyClone.album (album_id)
  ) engine = InnoDB;

   CREATE TABLE SpotifyClone.historico_de_reproducoes(
      musica_id INT,
      usuario_id INT NOT NULL,
      data_reproducao DATETIME NOT NULL,
      CONSTRAINT PRIMARY KEY (musica_id, usuario_id),
      FOREIGN KEY (musica_id) REFERENCES SpotifyClone.musica (musica_id),
      FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario (usuario_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.plano (plano_id, tipo, valor)
  VALUES
    (1, 'gratuito', 0),
    (2, 'familiar', 7.99),
    (3, 'universitário', 5.99),
    (4, 'pessoal', 6.99);

  INSERT INTO SpotifyClone.usuario (usuario_id, nome, idade, data_assinatura, plano_id)
  VALUES
(1,	'Barbara Liskov', 82, '2019-10-20', 1),
(2,	'Robert Cecil Martin', 58, '2017-01-06', 1),
(3,	'Ada Lovelace', 37, '2017-12-30', 2),
(4,	'Martin Fowler', 46, '2017-01-17', 2),
(5,	'Sandi Metz', 58, '2018-04-29', 2),
(6,	'Paulo Freire', 19, '2018-02-14', 3),
(7,	'Bell Hooks', 26, '2018-01-05', 3),
(8,	'Christopher Alexander', 85, '2019-06-05', 4),
(9,	'Judith Butler', 45, '2020-05-13', 4),
(10, 'Jorge Amado', 58, '2017-02-17', 4);

INSERT INTO SpotifyClone.artista (artista_id, nome)
  VALUES
    (1, 'Beyoncé'),
    (2, 'Queen'),
    (3, 'Elis Regina'),
    (4, 'Baco Exu do Blues'),
    (5, 'Blind Guardian'),
    (6, 'Nina Simone');

    INSERT INTO SpotifyClone.album (album_id, nome, ano_lancamento, artista_id)
  VALUES
    (1, 'Renaissance', 2022, 1),
    (2, 'Jazz', 1978, 2),
    (3, 'Hot Space', 1982, 2),
    (4, 'Falso Brilhante', 1998, 3),
    (5, 'Vento de Maio', 2001, 3),
    (6, 'QVVJFA?', 2003, 4),
    (7, 'Somewhere Far Beyond', 2007, 5),
    (8, 'I Put A Spell On You', 2012, 6);

  INSERT INTO SpotifyClone.musica (musica_id, nome, duracao_segundos, album_id)
  VALUES
    (1, 'BREAK MY SOUL', 279, 1),
    (2, 'VIRGO’S GROOVE', 369, 1),
    (3, 'ALIEN SUPERSTAR', 116, 1),
    (4, 'Don’t Stop Me Now', 203, 2),
    (5, 'Under Pressure', 152, 3),
    (6, 'Como Nossos Pais', 105, 4),
    (7, 'O Medo de Amar é o Medo de Ser Livre', 207, 5),
    (8, 'Samba em Paris', 267, 6),
    (9, 'The Bard’s Song', 244, 7),
    (10, 'Feeling Good', 100, 8);

    INSERT INTO SpotifyClone.seguidores_dos_artistas (artista_id, usuario_id)
  VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (1, 2),
    (3, 2),
    (2, 3),
    (4, 4),
    (5, 5),
    (6, 5),
    (6, 6),
    (1, 6),
    (6, 7),
    (3, 9),
    (2, 10);

    INSERT INTO SpotifyClone.historico_de_reproducoes (usuario_id, musica_id, data_reproducao)
  VALUES
    (1, 8, '2022-02-28 10:45:55'),
    (1, 2, '2020-05-02 05:30:35'),
    (1, 10, '2020-03-06 11:22:33'),
    (2, 10, '2022-08-05 08:05:17'),
    (2, 7, '2020-01-02 07:40:33'),
    (3, 10, '2020-11-13 16:55:13'),
    (3, 2, '2020-12-05 18:38:30'),
    (4, 8, '2021-08-15 17:10:10'),
    (5, 8, '2022-01-09 01:44:33'),
    (5, 5, '2020-08-06 15:23:43'),
    (6, 7, '2017-01-24 00:31:17'),
    (6, 1, '2017-10-12 12:35:20'),
    (7, 4, '2011-12-15 22:30:49'),
    (8, 4, '2012-03-17 14:56:41'),
    (9, 9, '2022-02-24 21:14:22'),
    (10, 3, '2015-12-13 08:30:22');