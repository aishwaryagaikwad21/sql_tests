SELECT "title" FROM "episodes" WHERE "season" = 1;

SELECT "season", "title" FROM "episodes" WHERE "episode_in_season" = 1;

SELECT "production_code" FROM "episodes" WHERE "title" = 'Hackerized!';

SELECT "title" FROM "episodes" WHERE "topic" IS NULL

SELECT "title" FROM "episodes" WHERE "air_date" = '2004-12-31'

--list the titles of episodes from season 6 (2008) that were released early, in 2007.
SELECT "title" FROM "episodes" WHERE "season" = 6 AND "air_date" <= '2007-12-31'

--write a SQL query to list the titles and topics of all episodes teaching fractions.
SELECT "title", "topic" FROM "episodes" WHERE "topic" LIKE '%Fractions%'

--write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive. 
SELECT COUNT("id") FROM "episodes" WHERE "air_date" BETWEEN '2018-01-01' AND '2023-12-31'

SELECT COUNT("id") FROM "episodes" WHERE "air_date" BETWEEN '2002-01-01' AND '2007-12-12'

--write a SQL query to list the ids, titles, and production codes of all episodes. Order the results by production code, from earliest to latest.
SELECT "id", "title", "production_code" FROM "episodes" ORDER BY "production_code" ASC

-- list the titles of episodes from season 5, in reverse alphabetical order.
SELECT "title" FROM "episodes" WHERE "season" = 5 ORDER BY "title" DESC

--count the number of unique episode titles.
SELECT COUNT(DISTINCT "title") AS "Distinct titles" FROM "episodes" 

--Custom query
SELECT "title" FROM "episodes" WHERE "title" LIKE '%the%' OR "title" LIKE 'Co%' 
