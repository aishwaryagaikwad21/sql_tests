
-- *** The Lost Letter ***
SELECT "address", "type" FROM "addresses"
WHERE "id" = (
    SELECT "address_id" FROM "scans"
    WHERE "action" = 'Drop' AND "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "contents" = 'Congratulatory letter' AND "from_address_id" = (
            SELECT "id" FROM "addresses"
            WHERE "address" = '900 Somerville Avenue'
        )
    )
);

-- *** The Devious Delivery ***
SELECT "address", "type" FROM "addresses"
WHERE "id" = (
    SELECT "address_id" FROM "scans"
    WHERE "action" = 'Drop' AND "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "contents" = 'Duck debugger'
    )
);

-- *** The Forgotten Gift ***
SELECT "id", "contents" FROM "packages"
WHERE "from_address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" = '109 Tileston Street'
) AND "to_address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" = '728 Maple Place'
);

-- SELECT "address_id", "action" FROM "scans"
-- WHERE "package_id" = 9523;

SELECT "name" FROM "drivers"
WHERE "id" = (
    SELECT "driver_id" FROM "scans"
    WHERE "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "from_address_id" = (
            SELECT "id" FROM "addresses"
            WHERE "address" = '109 Tileston Street'
        ) AND "to_address_id" = (
            SELECT "id" FROM "addresses"
            WHERE "address" = '728 Maple Place'
        )
    ) ORDER BY "timestamp" DESC LIMIT 1
);
