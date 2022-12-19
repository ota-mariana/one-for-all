# Repositório do projeto One For All

Projeto desenvolvido durante o curso para colocar em prática os conhecimentos adquiridos sobre **MySQL**, **queries** e **tabelas**. É preciso **normalizar** e popular as tabelas para executar as queries e assim encontrar as informações solicitadas.

O desenvolvimento do projeto é feito através dos seguintes desafios:

## Desafio 1

Criar um banco com o nome de **`SpotifyClone`**.

## Desafio 2

Criar uma `QUERY` que exiba três colunas:

- A primeira coluna com o alias "**cancoes**" que exibe a quantidade total de canções.
- A segunda coluna com o alias "**artistas**" que exibe a quantidade total de artistas.
- A terceira coluna com o alias "**albuns**" que exibe a quantidade total de álbuns.

## Desafio 3

Criar uma `QUERY` com apenas três colunas:

- A primeira possui o alias "**usuario**" e exibe o nome da pessoa usuária.
- A segunda possui o alias "**qt_de_musicas_ouvidas**" e exibe a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.
- A terceira possui o alias "**total_minutos**" e exibe a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

## Desafio 4

Criar uma `QUERY` que mostra as pessoas usuárias ativas **a partir do ano de 2021**, com base na data mais recente no histórico de reprodução.

- A coluna deve ter o alias "**usuario**" exibindo o nome da pessoa usuária.
- A coluna deve ter o alias "**status_usuario**" exibindo se a pessoa usuária está ativa ou inativa.

## Desafio 5

Criar uma `QUERY` com duas colunas mostrando as duas músicas mais tocadas no momento:

- A primeira coluna tem o alias "**cancao**" e exibe o nome da canção.
- A segunda coluna tem o alias "**reproducoes**" e exibe a quantidade de pessoas que já escutaram a canção.

## Desafio 6

Criar uma `QUERY` que exibe quatro dados sobre o faturamento da empresa com base no valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco:

- Uma coluna terá o alias "**faturamento_minimo**" mostrando o menor valor de plano.
- Uma coluna terá o alias "**faturamento_maximo**" mostrando o maior valor de plano.
- Uma coluna terá o alias "**faturamento_medio**" mostrando o valor médio dos planos das pessoas usuárias até o momento.
- Uma coluna terá o alias "**faturamento_total**" mostrando o valor total obtido com os planos das pessoas usuárias.

Para cada um desses valores, deve-se arredondar o faturamento usando apenas duas casas decimais.

## Desafio 7

Criar uma `QUERY` que mostra a relação dos álbuns produzidos por cada artista, ordenando pela quantidade de seguidores que cada um possui e com as seguintes colunas:

- Uma coluna deve exibir o nome da pessoa artista com o alias "**artista**".
- Uma coluna deve exibir o nome do álbum com o alias "**album**".
- Uma coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "**seguidores**".

## Desafio 8

Criar uma `QUERY` na qual o retorno mostra uma relação dos álbuns produzidos pela artista "Elis Regina" e exibe as seguintes colunas:

- O nome da pessoa artista com o alias "**artista**".
- O nome do álbum com o alias "**album**".

## Desafio 9

Criar uma `QUERY` que exibe a quantidade de músicas que estão presentes no histórico de reprodução da usuária `"Barbara Liskov"`. A coluna tem o alias "**quantidade_musicas_no_historico**".

## Desafio 10

Criar uma `QUERY` que exibe o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano gratuito ou pessoal.

- Uma coluna deve exibir o nome da canção com o alias "**nome**".
- Uma coluna deve exibir a quantidade de pessoas que já escutaram aquela canção e ter o alias "**reproducoes**".
- O resultado deve ser agrupado pelo nome da canção em ordem alfabética.

## BÔNUS

## Desafio 11

Criar uma `QUERY` que altera o nome das músicas de acordo com os critérios abaixo. O resultado deve estar em ordem alfabética decrescente.
- O nome da música em seu estado normal com o alias **nome_musica**.
- O nome da música atualizado com o alias **novo_nome**.
- Selecionar somente as músicas que foram alteradas. 

**Critérios**

- Trocar a palavra **"Bard"** por **"QA"**.
- Trocar a palavra **"Amar"** por **"Code Review"**.
- Trocar a palavra **"Pais"** por **"Pull Requests"**.
- Trocar a palavra **"SOUL"** por **"CODE"**.
- Trocar a palavra **"SUPERSTAR"** por **"SUPERDEV"**.


<!-- Olá, Tryber!
Esse é apenas um arquivo inicial para o README do seu projeto no qual você pode customizar e reutilizar todas as vezes que for executar o trybe-publisher.

Para deixá-lo com a sua cara, basta alterar o seguinte arquivo da sua máquina: ~/.student-repo-publisher/custom/_NEW_README.md

É essencial que você preencha esse documento por conta própria, ok?
Não deixe de usar nossas dicas de escrita de README de projetos, e deixe sua criatividade brilhar!
:warning: IMPORTANTE: você precisa deixar nítido:
- quais arquivos/pastas foram desenvolvidos por você; 
- quais arquivos/pastas foram desenvolvidos por outra pessoa estudante;
- quais arquivos/pastas foram desenvolvidos pela Trybe.
-->
