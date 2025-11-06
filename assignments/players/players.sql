SELECT "birth_city", "birth_state", "birth_country" FROM "players"
WHERE "first_name" = 'Jackie'
AND "last_name" = 'Robinson'

SELECT "bats" FROM "players"
WHERE "first_name" = 'Babe'
AND "last_name" = 'Ruth'

SELECT "id" FROM "players"
WHERE "debut" IS NULL

SELECT "first_name", "last_name" FROM "players"
WHERE "birth_country" != 'USA'
ORDER BY "first_name" ASC, "last_name" ASC

SELECT "first_name", "last_name" FROM "players"
WHERE "bats" = 'R'
ORDER BY "first_name", "last_name" ASC

SELECT "first_name", "last_name", "debut" FROM "players"
WHERE "birth_city" = 'Pittsburgh' AND "birth_state" = 'PA'
ORDER BY "debut" DESC, "first_name" ASC, "last_name" ASC

SELECT COUNT(*) FROM "players"
WHERE "bats" = 'R' AND "throws" = 'L'
OR "bats" = 'L' AND "throws" = 'R'

SELECT ROUND(AVG("height"), 2) AS 'Average Height',
ROUND(AVG("weight"), 2) AS 'Average Weight' FROM "players"
WHERE "debut" >= '2000-01-01'

SELECT "first_name", "last_name" FROM "players"
WHERE "final_game" >= '2022-01-01' AND "final_game" <= '2022-12-31'
ORDER BY "first_name" ASC, "last_name" ASC

SELECT "first_name", "last_name", "weight" AS 'W', "height" AS 'H' FROM "players"
WHERE "weight" >= 140 AND "height" >= 80
ORDER BY "weight" ASC, "height" ASC

