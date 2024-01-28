# SQL questions
 
-  # From the IMDb dataset, print the title and rating of those movies which have a genre starting from 'C' released in 2014 with a budgethigher than 4 Crore. (Download the dataset from console)
select Title, rating from genre left join IMDB on genre.movie_id = IMDB.movie_id where genre.genre like 'C%' and IMDB.title like '%2014%' and budget > 40000000

