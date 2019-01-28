# Chapter 4. Sorting, grouping and joins
# ORDER BY. How do you think ORDER BY sorts a column of text values by default?
# Alphabetically (A-Z)


# Sorting single columns
SELECT name FROM people ORDER BY name

SELECT name FROM people ORDER BY birthdate

SELECT name,birthdate FROM people ORDER BY birthdate


# Sorting single columns (2)
select title from films where (release_year=2000 OR release_year=2012) ORDER BY release_year

select * from films where release_year<>2015 ORDER BY duration

select title,gross from films where title LIKE 'M%' ORDER BY title


# Sorting single columns (DESC)
SELECT imdb_score,film_id from reviews ORDER BY imdB_score DESC

SELECT TITLE from FILMS ORDER BY TITLE DESC

SELECT TITLE,DURATION from FILMS ORDER BY DURATION DESC


# Sorting multiple columns
SELECT BIRTHDATE,NAME FROM PEOPLE ORDER BY BIRTHDATE,NAME

SELECT RELEASE_YEAR,DURATION,TITLE FROM FILMS ORDER BY RELEASE_YEAR,DURATION

SELECT CERTIFICATION,RELEASE_YEAR,TITLE FROM FILMS ORDER BY CERTIFICATION,RELEASE_YEAR

SELECT NAME,BIRTHDATE FROM PEOPLE ORDER BY NAME,BIRTHDATE


# GROUP BY. What is GROUP BY used for?
# Performing operations by column



# GROUP BY practice
SELECT RELEASE_YEAR,COUNT(*) FROM FILMS GROUP BY RELEASE_YEAR

SELECT RELEASE_YEAR,AVG(DURATION) FROM FILMS GROUP BY RELEASE_YEAR

SELECT RELEASE_YEAR,MAX(BUDGET) FROM FILMS GROUP BY RELEASE_YEAR

SELECT IMDB_SCORE,COUNT(FILM_ID) FROM REVIEWS GROUP BY IMDB_SCORE



#GROUP BY practice (2)
SELECT release_year, MIN(gross) FROM films GROUP BY release_year

SELECT language, SUM(gross) FROM films GROUP BY language

SELECT country, SUM(budget) FROM films GROUP BY country

SELECT release_year,country, MAX(budget) FROM films GROUP BY release_year,country ORDER BY release_year,country

SELECT release_year,country, MIN(gross) FROM films GROUP BY release_year,country ORDER BY country,release_year


# HAVING a great time. In how many different years were more than 200 movies released?
# 13


# All together now
SELECT RELEASE_YEAR, BUDGET, GROSS FROM FILMS 

SELECT RELEASE_YEAR, BUDGET, GROSS FROM FILMS WHERE RELEASE_YEAR > 1990

SELECT RELEASE_YEAR FROM FILMS WHERE RELEASE_YEAR > 1990 GROUP BY RELEASE_YEAR

SELECT RELEASE_YEAR, AVG(GROSS) avg_gross, AVG(BUDGET) avg_budget FROM FILMS WHERE RELEASE_YEAR > 1990 GROUP BY RELEASE_YEAR

SELECT RELEASE_YEAR, AVG(GROSS) avg_gross, AVG(BUDGET) avg_budget FROM FILMS WHERE RELEASE_YEAR > 1990 GROUP BY RELEASE_YEAR HAVING AVG(BUDGET)> 60000000 

SELECT RELEASE_YEAR, AVG(GROSS) avg_gross, AVG(BUDGET) avg_budget FROM FILMS WHERE RELEASE_YEAR > 1990 GROUP BY RELEASE_YEAR HAVING AVG(BUDGET)> 60000000 ORDER BY avg_gross DESC



# All together now (2)
-- select country, average budget, average gross
SELECT COUNTRY, AVG(BUDGET) avg_budget, AVG(GROSS) avg_gross
-- from the films table
FROM FILMS
-- group by country 
GROUP BY COUNTRY
-- where the country has more than 10 titles
HAVING COUNT(TITLE) > 10
-- order by country
ORDER BY COUNTRY
-- limit to only show 5 results
LIMIT 5


# A taste of things to come
SELECT title, imdb_score
FROM films
JOIN reviews
ON films.id = reviews.film_id
WHERE title = 'To Kill a Mockingbird';


# 8.4