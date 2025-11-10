SELECT "0m" FROM "normals"
WHERE "latitude" = 42.5
AND "longitude" = -69.5

SELECT "225m" FROM "normals"
WHERE "latitude" = 42.5
AND "longitude" = -69.5

SELECT "0m", "100m", "200m" FROM "normals"
WHERE "latitude" = 12.5
AND "longitude" = 60.5;

SELECT MIN("0m") FROM "normals";

SELECT MAX("0m") FROM "normals"

SELECT "latitude", "longitude", "50m" AS "temperature" FROM "normals"
WHERE "latitude" BETWEEN 0 AND 20
AND "longitude" BETWEEN 55 AND 75;

SELECT ROUND(AVG("0m"),2) AS "Equator Ocean Surface Temperature" FROM "normals"
WHERE "latitude" BETWEEN -0.5 AND 0.5;


SELECT "latitude", "longitude", "0m" AS "Surface Temperature" FROM "normals"
ORDER BY "0m" ASC, "latitude" ASC LIMIT 10;

SELECT "latitude", "longitude", "0m" AS "Surface Temperature" FROM "normals"
ORDER BY "0m" DESC, "latitude" ASC LIMIT 10;

SELECT COUNT(DISTINCT "latitude") FROM "normals"
WHERE "0m" IS NOT NULL;