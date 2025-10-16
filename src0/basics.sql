-- List all books published in 2023.
SELECT "title" FROM "longlist" WHERE "year" = 2023

--Display title and author of all books with rating above 4.0.
SELECT "title", "author", "rating" FROM "longlist" WHERE "rating" > 4.0 ORDER BY "rating" DESC;

--Find how many books are there in total.
SELECT COUNT(*) AS "Total Books" FROM "longlist"

--List distinct publishers in the dataset.
SELECT COUNT(DISTINCT "publisher") AS "Distinct Publisher" FROM "longlist"

--Show all books that have more than 300 pages.
SELECT "title", "pages" FROM "longlist" WHERE "pages" >= 300 ORDER BY "pages" DESC

--Get the title, author, and rating of books published before 2020.
SELECT "title", "year", "rating" FROM "longlist" WHERE "year" < 2020 ORDER BY "rating" DESC

--Find all books whose title contains the word “Love”.
SELECT "title", "author" FROM "longlist" WHERE "title" LIKE '%love%'

--List all paperback books published after 2021.
SELECT "title", "format", "year" FROM "longlist" WHERE "format" = 'paperback' AND "year" > 2021

--Find all books which have no translator (translator IS NULL).
SELECT "title", "translator" FROM "longlist" WHERE "translator" IS NULL;

--Order all books by rating in descending order.
SELECT "title", "rating" FROM "longlist" ORDER BY "rating" DESC