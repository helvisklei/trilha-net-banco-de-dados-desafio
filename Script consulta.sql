 SELECT * FROM Atores;
 
 /* 1 - Buscar o nome e ano dos filmes */
 SELECT nome AS Nome,ano AS Ano FROM Filmes;
 
 /* 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
 SELECT nome AS Nome,ano AS Ano, duracao AS Duracao FROM Filmes ORDER BY Ano ASC;
 
 /*3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração*/
  SELECT nome AS Nome,ano AS Ano, duracao AS Duracao FROM Filmes WHERE Ano = 1985;
  SELECT nome AS Nome,ano AS Ano, duracao AS Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';
  SELECT nome AS Nome,ano AS Ano, duracao AS Duracao FROM Filmes WHERE Duracao = 116;

  /*4 - Buscar os filmes lançados em 1997*/
  SELECT nome AS Nome,ano AS Ano, duracao AS Duracao FROM Filmes WHERE Ano = 1997;

  /*5 - Buscar os filmes lançados APÓS o ano 2000*/
  SELECT nome AS Nome,ano AS Ano, duracao AS Duracao FROM Filmes WHERE Ano > 2000;

  /*6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/
  SELECT nome AS Nome,ano AS Ano, duracao AS Duracao FROM Filmes WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao ASC;

  /*7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/
  SELECT ano AS ANO, COUNT(ano) AS Quantidade FROM Filmes GROUP BY ano ORDER BY Quantidade DESC;

  /*8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome*/
  SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';
  SELECT * FROM Atores WHERE Genero = 'M'  
  SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

  /*9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/
  SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY 'PrimeiroNome';
  SELECT * FROM Atores WHERE Genero = 'F' ORDER BY 'PrimeiroNome'  ;
  SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY 'PrimeiroNome';

  /*10 - Buscar o nome do filme e o gênero*/
  SELECT f.Nome AS Nome, g.Genero AS Genero 
  FROM Filmes f 
  INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
  INNER JOIN Generos g ON fg.IdGenero = g.Id;

  /*11 - Buscar o nome do filme e o gênero do tipo "Mistério"*/
  SELECT f.Nome AS Nome, g.Genero AS Genero 
  FROM Filmes f 
  INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
  INNER JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero ='Mistério';

  /*12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel*/
	SELECT f.Nome AS Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
	FROM Filmes f
	INNER JOIN ElencoFilme e ON f.id = e.IdFilme
	INNER JOIN Atores a ON e.IdAtor = a.id;
