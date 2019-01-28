# Chapter 2. Filtering rows
# Filtering results. What does the following query return?
# Films released before the year 2000



# Simple filtering of numeric values
SELECT * FROM films WHERE release_year=2016


# Simple filtering of text
SELECT * FROM FILMS WHERE language='French'

SELECT name,birthdate FROM people WHERE birthdate='1974-11-11'

SELECT COUNT(*) FROM films WHERE language='Hindi'

SELECT * FROM films WHERE certification='R'


# WHERE AND
select title, release_year from films where language='Spanish' and release_year<2000

select * from films where language='Spanish' and release_year>2000

select * from films where language='Spanish' and release_year>2000 and release_year<2010


# WHERE AND OR. What does the OR operator do?
# Display only rows that meet at least one of the specified conditions.



# WHERE AND OR (2)
select title, release_year from films where (release_year=1990 or release_year=1991 or release_year=1992 or release_year=1993 or release_year=1994 or release_year=1995 or release_year=1996 or release_year= 1997 or release_year=1998 or release_year=1999)

select title, release_year from films where (release_year=1990 or release_year=1991 or release_year=1992 or release_year=1993 or release_year=1994 or release_year=1995 or release_year=1996 or release_year= 1997 or release_year=1998 or release_year=1999) and (language='French' or language='Spanish')

select title, release_year from films where (release_year=1990 or release_year=1991 or release_year=1992 or release_year=1993 or release_year=1994 or release_year=1995 or release_year=1996 or release_year= 1997 or release_year=1998 or release_year=1999) and (language='French' or language='Spanish') and gross>2000000


# BETWEEN. What does the BETWEEN keyword do?
# Filter numeric values



# BETWEEN (2)
select title, release_year from films where release_year between 1990 and 2000

select title, release_year from films where release_year between 1990 and 2000 and budget>100000000

select title, release_year from films where release_year between 1990 and 2000 and budget>100000000 and language='Spanish'

select title, release_year from films where release_year between 1990 and 2000 and budget>100000000 and (language='Spanish' or language='French')



# WHERE IN
select title, release_year from films where (release_year='1990' or release_year='2000') and duration>120

select title, language from films where (language='English' or language='Spanish' or language='French')

select title, certification from films where certification in ('NC-17','R')


# Introduction to NULL and IS NULL. What does NULL represent?
# A corrupt entry



# NULL and IS NULL
select name from people where deathdate is NULL

select title from films where budget is NULL

select count(*) from films where language is NULL



# LIKE and NOT LIKE
select name from people where name like'B%'

select name from people where name like'_r%'

select name from people where name NOT like'A%'
