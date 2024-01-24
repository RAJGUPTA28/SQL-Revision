# SQL questions
  
select Title, rating from genre left join IMDB on genre.movie_id = IMDB.movie_id where genre.genre like 'C%' and IMDB.title like '%2014%' and budget > 40000000
