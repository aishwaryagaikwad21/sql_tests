--Find the average rating of all books.
SELECT ROUND(AVG("rating"), 2) AS "Average ratings" FROM "longlist"

--Count how many books each publisher has published.
SELECT "publisher", COUNT(*) AS "Number of Books"
FROM "longlist"
GROUP BY "publisher" --groups the rows by publisher so we can count per publisher.
ORDER BY "Number of Books" DESC; -- sorts the result from the publisher with most books to least.

--Find the publisher who has published the most books.
SELECT "publisher", COUNT(*) AS "Number of Books"
FROM "longlist"
GROUP BY "publisher"
ORDER BY "Number of books" DESC
LIMIT 1;

--List authors with more than one book in the dataset.
SELECT "title", "author", COUNT(*) AS "Number of books"
FROM "longlist"
GROUP BY "author"
HAVING COUNT(*) > 1
ORDER BY "Number of Books" DESC

--Find the book with the maximum number of pages.

--Find the average number of pages for books published in 2023.

--Calculate total votes received by books published in 2021.

--List top 5 highest-rated books (title, author, rating).

--Show the number of books in each format (paperback, hardcover).

--Get the average rating grouped by publisher.