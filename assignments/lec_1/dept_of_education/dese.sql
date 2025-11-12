--https://cs50.harvard.edu/sql/psets/1/dese/

SELECT "name", "city" FROM "schools"
WHERE "type" = 'Public School'

SELECT "name" FROM "districts"
WHERE "name" LIKE '%(non-op)';

SELECT AVG("per_pupil_expenditure") AS 'Average District Per-Pupil Expenditure'
FROM "expenditures"


SELECT "city", COUNT(*) AS "Total_Public_Schools" FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY "Total_Public_Schools" DESC, "city" ASC
LIMIT 10


SELECT "city", COUNT("id") AS "Total_Public_Schools" FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING COUNT("id") <= 3
ORDER BY "Total_Public_Schools" DESC, "city" ASC;


SELECT "name" FROM "schools"
WHERE "id" IN (
    SELECT "school_id" FROM "graduation_rates"
    WHERE "graduated" = 100
);


SELECT "name" FROM "schools"
WHERE "district_id" = (
    SELECT "id" FROM "districts"
    WHERE "name" = 'Cambridge'
)


-- SELECT "name", "pupils" FROM "districts"
-- JOIN "expenditures" ON "expenditures"."id" = "districts"."id"

-- SELECT COUNT("district_id") FROM "expenditures"
SELECT "name", "pupils" FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"

SELECT "name" FROM "districts"
WHERE "id" = (
    SELECT "district_id" FROM "expenditures"
    WHERE "pupils" = (
        SELECT MIN("pupils") FROM "expenditures"
    )
)


SELECT "name", "per_pupil_expenditure" FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
WHERE "type" = 'Public School District'
ORDER BY "per_pupil_expenditure" DESC
LIMIT 10


SELECT "name", "per_pupil_expenditure", "graduated" FROM "schools"
JOIN "expenditures" ON "schools"."district_id" = "expenditures"."district_id"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
ORDER BY "per_pupil_expenditure" DESC, "name" ASC


SELECT "name", "per_pupil_expenditure", "exemplary" FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
JOIN "staff_evaluations" ON "districts"."id" = "staff_evaluations"."district_id"
WHERE "exemplary" > (
    SELECT AVG("exemplary") FROM "staff_evaluations"
)
 AND "per_pupil_expenditure" > (
    SELECT AVG("per_pupil_expenditure") FROM "expenditures"
 )
 AND "type" = 'Public School District'
ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC


--Want to find schools and their graduated percent and dropped percent
-- having below avg expenditure and graduation rate is below 50%
SELECT "name", "graduated", "dropped", "per_pupil_expenditure","needs_improvement" FROM "schools"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
JOIN "expenditures" ON "schools"."district_id" = "expenditures"."district_id"
JOIN "staff_evaluations" ON "schools"."district_id" = "staff_evaluations"."district_id"
WHERE "per_pupil_expenditure" < (
    SELECT AVG("per_pupil_expenditure") FROM "expenditures"
)
AND "graduated" < 50


