SELECT "japanese_title", "english_title" FROM "views"

SELECT "average_color" FROM "views"
WHERE "artist" = 'Hokusai'
AND "english_title" LIKE '%river%'

SELECT COUNT(*) AS 'Has Fuji' FROM "views"
WHERE "artist" = 'Hokusai'
AND "english_title" LIKE '%Fuji%'


SELECT COUNT(*) AS 'Has Eastern Capital' FROM "views"
WHERE "artist" = 'Hiroshige'
AND "english_title" LIKE '%Eastern Capital%'

SELECT MAX("contrast") FROM "views"
WHERE "artist" = 'Hokusai'

SELECT ROUND(AVG("entropy"), 2) AS 'Hiroshige Average Entropy' FROM "views"
WHERE "artist" = 'Hiroshige'

SELECT "english_title" FROM "views"
WHERE "artist" = 'Hiroshige'
ORDER BY "brightness" DESC
LIMIT 5

SELECT "english_title" FROM "views"
WHERE "artist" = 'Hokusai'
ORDER BY "contrast" ASC
LIMIT 5

SELECT "english_title", "artist" FROM "views"
ORDER BY "brightness" DESC
LIMIT 1

SELECT "english_title" AS 'River Titles' FROM "views"
WHERE "artist" = 'Hiroshige'
AND "english_title" LIKE '%River%'
ORDER BY "brightness" DESC

