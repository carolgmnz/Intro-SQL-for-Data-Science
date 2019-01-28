# Chapter 3. Aggregate functions
# Aggregate functions
SELECT SUM(DURATION) FROM FILMS

SELECT AVG(DURATION) FROM FILMS

SELECT MIN(DURATION) FROM FILMS

SELECT MAX(DURATION) FROM FILMS


# Aggregate functions practice
SELECT SUM(GROSS) FROM FILMS

SELECT AVG(GROSS) FROM FILMS

SELECT MIN(GROSS) FROM FILMS

SELECT MAX(GROSS) FROM FILMS



#Combining aggregate functions with WHERE
SELECT SUM(GROSS) FROM FILMS WHERE release_year>=2000

SELECT AVG(gross) FROM films WHERE title LIKE 'A%'

SELECT MIN(gross) FROM films WHERE release_year=1994

SELECT MAX(gross) FROM films WHERE release_year>2000 AND release_year<2012



# A note on arithmetic. What is the result of SELECT (10 / 3);?
# 3



# It's AS simple AS aliasing
SELECT title,(gross-budget) AS net_profit FROM films

SELECT title,(duration / 60.0) AS duration_hours FROM films

SELECT AVG(duration)/60.0 AS avg_duration_hours FROM films



# Even more aliasing
SELECT COUNT(DEATHDATE)*100.0 /COUNT(*) AS percentage_dead FROM PEOPLE-- get the count(deathdate) and multiply by 100.0
-- then divide by count(*)

SELECT MAX(release_year)-MIN(release_year) AS difference FROM films-- get the count(deathdate) and multiply by 100.0
-- then divide by count(*)

SELECT (MAX(release_year)-MIN(release_year))/10.0 AS number_of_decades FROM films
