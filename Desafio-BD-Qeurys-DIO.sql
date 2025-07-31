select* from Atores
select* from Filmes

--1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano, Duracao from Filmes
Order By Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select Nome,Ano,Duracao from Filmes
Where Nome = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997
select Nome, Ano, Duracao from Filmes
where Ano = '1997'

--5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, Duracao from Filmes
where Ano > '2000'


--6 - Buscar os filmes com a duracao maior que 100 e menor que 150,
--ordenando pela duracao em ordem crescente
select Nome,Ano,Duracao from Filmes
Where Duracao > '100' and Duracao < '150'
Order By Duracao Asc



--7 - Buscar a quantidade de filmes lançadas no ano,
    --agrupando por ano, ordenando pela duracao em ordem decrescente
select count(*) as Quantidade, Ano from Filmes
Group By Ano
Order By Quantidade desc


--8 -Buscar os Atores do gênero masculino, 
  --retornando o PrimeiroNome, UltimoNome:
Select Id, PrimeiroNome, UltimoNome, Genero from Atores
Where Genero ='M'



--9 -Buscar os Atores do gênero feminino, 
  --retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome:
Select Id, PrimeiroNome, UltimoNome, Genero from Atores
Where Genero = 'F'
Order By PrimeiroNome

select* from FilmesGenero
Order By IdFilme

select* from Generos

--10 Buscar o nome do filme e o gênero
select 
     f.Nome as NomeFilme,
	 g.Genero as Genero

from Filmes  f inner join FilmesGenero  fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id





--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select 
     f.Nome as NomeFilme,
	 g.Genero as Genero

from Filmes  f inner join FilmesGenero  fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id
Where Genero = 'Mistério'



--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome
    --e seu Papel
select* from Atores
select* from Filmes
select* from ElencoFilme


-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
    f.Nome AS NomeFilme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM 
    Filmes f
INNER JOIN 
    ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN 
    Atores a ON ef.IdAtor = a.Id;





