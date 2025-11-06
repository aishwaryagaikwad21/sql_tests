SELECT 'author' AS "profession", "name" FROM "authors"
 UNION
 SELECT 'translator' AS "profession", "name" FROM "translators"

 --Intersect 
 SELECT "name" FROM "authors"
 INTERSECT 
SELECT "name" FROM "translators"; --Ngugi wa Thiong

--Only Authors or Only translators
SELECT "name" FROM "authors"
EXCEPT
SELECT "name" FROM "translators";

--query where 2 authors have written books together
SELECT "book_id" FROM "translated" WHERE "translator_id" = ( 
 SELECT "id" FROM "translators" WHERE "name" = 'Sophie Hughes'
 ) 
 INTERSECT
 SELECT "book_id" FROM "translated" WHERE "translator_id" = (
    SELECT "id" FROM "translators" WHERE "name" = 'Margaret Jull Costa'
    );

--NOTES - https://cs50.harvard.edu/sql/notes/1/